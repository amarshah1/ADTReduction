# from fuzzing import *
# import z3
import os
import time
import glob
import subprocess
from concurrent.futures import ProcessPoolExecutor, as_completed

timeout = 120


# A function that runs the Ocaml that does the reductions for us
def run_ocaml_on_smt2(smt2_file_path, ocaml_executable_path = "../../_build/default/src/Fullreduction.exe"):
    cmd = [ocaml_executable_path, smt2_file_path]
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout = timeout)
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
folder = "../QF_DT2/20210312-Bouvier/"


# files = os.listdir(t + folder)
# name = "../QF_DT" + t[9:] + folder + "*.smt2"
# print(name)
files = glob.glob(folder + "*.smt2")[:2]


# Will take in a file name
# returns: the runtime for z3 pre/post-reduction, cvc5 pre/post reduction, mc2 post red
# whether each of these return sat or unsat
# and whether this value violates sat/unsat
def reduction_on_file(file_name):
    doesnt_match = False
    print(file_name)
    reduced_file_name = folder[:-1] + "/reduced/REDUCED" +  file_name[len(folder):]
    start_time = time.time()
    smt_query_post_reduction = run_ocaml_on_smt2(file_name)

    reduction_time = time.time() - start_time

    print("Reduction Time: ", reduction_time)

    if smt_query_post_reduction == "TIMEOUT":
        print("TIMED OUT on Reduction")
        total_time = timeout + 1
        z3_time_post = total_time
        cvc5_time_post = total_time
        mc2_time_post = total_time

        # # z3 solver for pre reduction
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

        # cvc5 solver for pre-reduction
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
            cvc5_time_pre = timeout + 1

        return [z3_time_pre, z3_time_post, cvc5_time_pre, cvc5_time_post, mc2_time_post], doesnt_match

    print("about to print reduction")
    print(smt_query_post_reduction, file=open(reduced_file_name, 'w'))

    # # z3 solver
    print("at z3")
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
        
    print("at cvc5")
    # cvc5 solver
    start_time = time.time()
    pre_reduction_cvc5 = os.popen("cvc5 --tlimit=" + str(timeout * 1000) + " " + file_name)
    pre_reduction_cvc5 = pre_reduction_cvc5.read()
    total_time = time.time() - start_time


    if pre_reduction_cvc5 != "":
        print("cvc5_pre: ", pre_reduction_cvc5)
        pre_reduction_cvc5 = pre_reduction_cvc5[0]
        if pre_reduction_cvc5 == "s":
            cvc5_time_pre = total_time 
        elif pre_reduction_cvc5 == "u":
            cvc5_time_pre = total_time
        else:
            cvc5_time_pre = timeout + 1
    else:
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
        cvc5_time_post = timeout + 1



    #for mc2
    print("at mc2")

    start_time = time.time()
    post_reduction_mc2 = os.popen("mc2 -t " + str(timeout) + " " + reduced_file_name)
    post_reduction_mc2 = post_reduction_mc2.read() #[52]
    total_time = time.time() - start_time

    print("mc2_post: ", post_reduction_mc2)

    if post_reduction_mc2 != "Spaceout":
        post_reduction_mc2 = post_reduction_mc2[0]
        if post_reduction_mc2 == "S":
            mc2_time_post = total_time + reduction_time
            if file_name[-8] != "h":
                print(file_name, file_name[-8])
                doesnt_match = True
        elif post_reduction_mc2 == "U":
            mc2_time_post = total_time + reduction_time
            if file_name[-8] != "b":
                print(file_name, file_name[-8])
                doesnt_match = True
        else:
            mc2_time_post = timeout + 1
    else:
        mc2_time_post = timeout + 1

    return [z3_time_pre, z3_time_post, cvc5_time_pre, cvc5_time_post, mc2_time_post], doesnt_match

if __name__ == '__main__':
    print(os.cpu_count)
    z3_pre, z3_post, cvc5_pre, cvc5_post, mc2_post = [], [], [], [], []
    incorrects = []

    with ProcessPoolExecutor() as executor:
        futures = {executor.submit(reduction_on_file, x): x for x in files}

        for future in as_completed(futures):
            results, doesnt_match = future.result()
            z3_pre.append(results[0])
            z3_post.append(results[1])
            cvc5_pre.append(results[2])
            cvc5_post.append(results[3])
            mc2_post.append(results[4])

            if doesnt_match:
                incorrects.append(futures[future])

    print("DOESNT MATCH: ", incorrects)
    print("Z3 Times Pre-processing: ", z3_pre)
    print("Z3 Times Post-processing: ", z3_post)
    print("CVC5 Times Pre-processing: ", cvc5_pre)
    print("CVC5 Times Post-processing: ", cvc5_post)
    print("mc2 Times Pre-processing: ", mc2_post)

