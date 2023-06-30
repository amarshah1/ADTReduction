# from fuzzing import *
# import z3
import os
import time
import glob
import subprocess
from concurrent.futures import ProcessPoolExecutor, as_completed

timeout = 30
reduction_timeout = 30


# A function that runs the Ocaml that does the reductions for us
def run_ocaml_on_smt2(smt2_file_path, ocaml_executable_path = "../../_build/default/src/Fullreduction.exe"):
    cmd = [ocaml_executable_path, smt2_file_path]
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout = reduction_timeout)
    except:
        return "TIMEOUT"
    
    if result.returncode != 0:
        return f"Error: {result.stderr}"
    else:
        return result.stdout

# folders = {"../QF_DT2/20172804-Barrett/barrett-jsat/tests/": ["v1/", "v2/", "v3/", "v5/", "v10/"],
#             "../QF_DT2/20172804-Barrett/barrett-jsat/typed/": ["v1/", "v2/", "v3/", "v5/", "v10/"],
#             "../QF_DT2/20210312-Bouvier/": [""]}

# folders = {"../QF_DT2/20172804-Barrett/barrett-jsat/tests/": ["v1/"]}
folder = "../QF_DT2/20172804-Barrett/barrett-jsat/tests/v1/"
          


# files = os.listdir(t + folder)
# name = "../QF_DT" + t[9:] + folder + "*.smt2"
# print(name)

files = glob.glob(folder + "*.smt2")[:30]

# files = ['../QF_DT2/20210312-Bouvier/vlsat3_b48.smt2', '../QF_DT2/20210312-Bouvier/vlsat3_b69.smt2', '../QF_DT2/20210312-Bouvier/vlsat3_b45.smt2', '../QF_DT2/20210312-Bouvier/vlsat3_b78.smt2', '../QF_DT2/20210312-Bouvier/vlsat3_b39.smt2', '../QF_DT2/20210312-Bouvier/vlsat3_b59.smt2', '../QF_DT2/20210312-Bouvier/vlsat3_b60.smt2', '../QF_DT2/20210312-Bouvier/vlsat3_b94.smt2', '../QF_DT2/20210312-Bouvier/vlsat3_b27.smt2', '../QF_DT2/20210312-Bouvier/vlsat3_b92.smt2']


# Will take in a file name
# returns: the runtime for z3 pre/post-reduction, cvc5 pre/post reduction, mc2 post red
# whether each of these return sat or unsat
# and whether this value violates sat/unsat
def reduction_on_file(file_name):
    doesnt_match = False
    print(file_name)
    reduced_file_name = folder[:-1] + "reduced/REDUCED" +  file_name[len(folder):]
    start_time = time.time()
    smt_query_post_reduction = run_ocaml_on_smt2(file_name)

    reduction_time = time.time() - start_time


    if smt_query_post_reduction == "TIMEOUT":
        total_time = timeout + 1
        z3_time_post = total_time
        cvc5_time_post = total_time
        mc2_time_post = total_time
        z3_result_post, cvc5_result_post, mc2_result_post = "RT", "RT", "RT"

        # # z3 solver for pre reduction
        start_time = time.time()
        pre_reduction_z3 = os.popen("z3 -T:" + str(timeout) + " " + file_name)

        pre_reduction_z3 = pre_reduction_z3.read()[0]
        total_time = time.time() - start_time
        z3_result_pre = pre_reduction_z3
        if pre_reduction_z3 == "s":
            z3_time_pre = total_time
        elif pre_reduction_z3 == "u":
            z3_time_pre = total_time
        else:
            z3_time_pre= timeout + 1

        # cvc5 solver for pre-reduction
        start_time = time.time()
        pre_reduction_cvc5 = os.popen("cvc5 --tlimit=" + str(timeout * 1000) + " " + file_name)
        pre_reduction_cvc5 = pre_reduction_cvc5.read()
        total_time = time.time() - start_time

        if pre_reduction_cvc5 != "":
            pre_reduction_cvc5 = pre_reduction_cvc5[0]
            if pre_reduction_cvc5 == "s":
                cvc5_time_pre = total_time
                cvc5_result_pre = "s"
            elif pre_reduction_cvc5 == "u":
                cvc5_time_pre = total_time
                cvc5_result_pre = "u"
            else:
                cvc5_time_pre = timeout + 1
                cvc5_result_pre = "T"
        else:
            cvc5_time_pre = timeout + 1
            cvc5_result_pre = "T"


        return [z3_time_pre, z3_time_post, cvc5_time_pre, cvc5_time_post, mc2_time_post], [z3_result_pre, z3_result_post, cvc5_result_pre, cvc5_result_post, mc2_result_post], doesnt_match

    print(smt_query_post_reduction, file=open(reduced_file_name, 'w'))

    # # z3 solver
    start_time = time.time()
    pre_reduction_z3 = os.popen("z3 -T:" + str(timeout) + " " + file_name)

    pre_reduction_z3 = pre_reduction_z3.read()[0]
    total_time = time.time() - start_time
    if pre_reduction_z3 == "s":
        z3_time_pre = total_time
    elif pre_reduction_z3 == "u":
        z3_time_pre = total_time
    else:
        z3_time_pre= timeout + 1


    start_time = time.time()
    post_reduction_z3 = os.popen("z3 -T:" + str(timeout) + " " + reduced_file_name)
    post_reduction_z3 = post_reduction_z3.read()[0]
    total_time = time.time() - start_time
    if post_reduction_z3 == "s":
        z3_time_post = total_time + reduction_time
    elif post_reduction_z3 == "u":
        z3_time_post = total_time + reduction_time
    else:
        z3_time_post= timeout + 1 
        
    # cvc5 solver
    start_time = time.time()
    pre_reduction_cvc5 = os.popen("cvc5 --tlimit=" + str(timeout * 1000) + " " + file_name)
    pre_reduction_cvc5 = pre_reduction_cvc5.read()
    total_time = time.time() - start_time


    if pre_reduction_cvc5 != "":
        pre_reduction_cvc5 = pre_reduction_cvc5[0]
        if pre_reduction_cvc5 == "s":
            cvc5_time_pre = total_time 
        elif pre_reduction_cvc5 == "u":
            cvc5_time_pre = total_time
        else:
            cvc5_time_pre = timeout + 1
    else:
        pre_reduction_cvc5 = "T"
        cvc5_time_pre = timeout + 1



    start_time = time.time()
    post_reduction_cvc5 = os.popen("cvc5 --tlimit=" + str(timeout * 1000) + " " + reduced_file_name)
    post_reduction_cvc5 = post_reduction_cvc5.read()
    total_time = time.time() - start_time

    if post_reduction_cvc5 != "":
        post_reduction_cvc5 = post_reduction_cvc5[0]
        if post_reduction_cvc5 == "s":
            cvc5_time_post = total_time + reduction_time
        elif post_reduction_cvc5 == "u":
            cvc5_time_post = total_time + reduction_time
        else:
            cvc5_time_post = timeout + 1
    else:
        post_reduction_cvc5 = "T"
        cvc5_time_post = timeout + 1



    #for mc2
    start_time = time.time()
    post_reduction_mc2 = os.popen("mc2 -t " + str(timeout) + " " + reduced_file_name)
    post_reduction_mc2 = post_reduction_mc2.read() #[52]
    total_time = time.time() - start_time


    if post_reduction_mc2[:2] != "Sp":
        post_reduction_mc2 = post_reduction_mc2[0]
        if post_reduction_mc2 == "S" :
            mc2_time_post = total_time + reduction_time
        elif post_reduction_mc2 == "U":
            mc2_time_post = total_time + reduction_time
        else:
            mc2_time_post = timeout + 1
    else:
        mc2_time_post = timeout + 1

    if post_reduction_mc2 == "S" or post_reduction_cvc5 == "s" or post_reduction_z3 == "s":
        if pre_reduction_z3 == "u":
            doesnt_match = True
    elif post_reduction_mc2 == "U" or post_reduction_cvc5 == "u" or post_reduction_z3 == "u":
        if pre_reduction_z3 == "s":
            doesnt_match = True


    return [z3_time_pre, z3_time_post, cvc5_time_pre, cvc5_time_post, mc2_time_post], [pre_reduction_z3, post_reduction_z3, pre_reduction_cvc5, post_reduction_cvc5, post_reduction_mc2], doesnt_match

if __name__ == '__main__':
    z3_pre, z3_post, cvc5_pre, cvc5_post, mc2_post = [], [], [], [], []
 
    z3_pre_results = {"SAT": 0, "UNSAT":0, "TIMEOUT":0}
    z3_post_results = {"SAT": 0, "UNSAT":0, "TIMEOUT":0, "REDUCTION TIMEOUT": 0}
    cvc5_pre_results = {"SAT": 0, "UNSAT":0, "TIMEOUT":0}
    cvc5_post_results = {"SAT": 0, "UNSAT":0, "TIMEOUT":0, "REDUCTION TIMEOUT": 0}
    mc2_post_results = {"SAT": 0, "UNSAT":0, "TIMEOUT":0, "REDUCTION TIMEOUT": 0}

    incorrects = []

    with ProcessPoolExecutor() as executor:
        futures = {executor.submit(reduction_on_file, x): x for x in files}

        for future in as_completed(futures):
            times, results, doesnt_match = future.result()
            z3_pre.append(times[0])
            z3_post.append(times[1])
            cvc5_pre.append(times[2])
            cvc5_post.append(times[3])
            mc2_post.append(times[4])

            if results[0] == "s":
                z3_pre_results['SAT'] += 1
            elif results[0] == "u":
                z3_pre_results['UNSAT'] += 1
            else:
                z3_pre_results['TIMEOUT'] += 1
            
            if results[1] == "s":
                z3_post_results['SAT'] += 1
            elif results[1] == "u":
                z3_post_results['UNSAT'] += 1
            elif results[1] == 'RT':
                z3_post_results['REDUCTION TIMEOUT'] +=1
            else:
                z3_post_results['TIMEOUT'] += 1

            if results[2] == "s":
                cvc5_pre_results['SAT'] += 1
            elif results[2] == "u":
                cvc5_pre_results['UNSAT'] += 1
            else:
                cvc5_pre_results['TIMEOUT'] += 1

            if results[3] == "s":
                cvc5_post_results['SAT'] += 1
            elif results[3] == "u":
                cvc5_post_results['UNSAT'] += 1
            elif results[3] == 'RT':
                cvc5_post_results['REDUCTION TIMEOUT'] +=1
            else:
                cvc5_post_results['TIMEOUT'] += 1
            
            if results[4] == "S":
                mc2_post_results['SAT'] += 1
            elif results[4] == "U":
                mc2_post_results['UNSAT'] += 1
            elif results[4] == 'RT':
                mc2_post_results['REDUCTION TIMEOUT'] +=1
            else:
                mc2_post_results['TIMEOUT'] += 1

            if doesnt_match:
                incorrects.append(futures[future])

    print("DOESNT MATCH: ", incorrects)
    print("Z3 Times Pre-processing: ", z3_pre)
    print("Z3 Times Post-processing: ", z3_post)
    print("CVC5 Times Pre-processing: ", cvc5_pre)
    print("CVC5 Times Post-processing: ", cvc5_post)
    print("mc2 Times Pre-processing: ", mc2_post)

    print("Z3 Pre-processing (SAT / UNSAT / TIMEOUT): ", z3_pre_results['SAT'], "/", z3_pre_results['UNSAT'], "/", z3_pre_results['TIMEOUT'])
    print("Z3 Post-processing (SAT / UNSAT / TIMEOUT / REDUCTION TIMEOUT): ", z3_post_results['SAT'], "/", z3_post_results['UNSAT'], "/", z3_post_results['TIMEOUT'], "/", z3_post_results['REDUCTION TIMEOUT'])
    print("CVC5 Pre-processing (SAT / UNSAT / TIMEOUT): ", cvc5_pre_results['SAT'], "/", cvc5_pre_results['UNSAT'], "/", cvc5_pre_results['TIMEOUT'])
    print("CVC5 Post-processing (SAT / UNSAT / TIMEOUT / REDUCTION TIMEOUT): ", cvc5_post_results['SAT'], "/", cvc5_post_results['UNSAT'], "/", cvc5_post_results['TIMEOUT'], "/", cvc5_post_results['REDUCTION TIMEOUT'])
    print("mc2 Post-processing (SAT / UNSAT / TIMEOUT / REDUCTION TIMEOUT): ", mc2_post_results['SAT'], "/", mc2_post_results['UNSAT'], "/", mc2_post_results['TIMEOUT'], "/", mc2_post_results['REDUCTION TIMEOUT'])


