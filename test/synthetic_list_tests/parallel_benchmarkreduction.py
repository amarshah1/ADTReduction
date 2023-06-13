import random
from manualreduction import *
# from fuzzing import *
# import z3
import os
import time
import glob
import sys
import subprocess

# A function that runs the Ocaml that does the reductions for us
def run_ocaml_on_smt2(smt2_file_path, ocaml_executable_path = "../../_build/default/src/Fullreduction.exe"):
    cmd = [ocaml_executable_path, smt2_file_path]
    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout = 120)
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
folders = {"../QF_DT2/20210312-Bouvier/": [""]}

timeout = 120

for t in folders.keys():
    for folder in folders[t]:
        print("----------------------------------CASE: ", t, folder, "----------------------------")

        match_sat = []
        match_unsat = [] 
        dont_match =[]
        timeout = []

        # Generate 10 fuzzed ADT list queries and print them in SMT format

        total_reduction_time = 0
        z3_time_pre = 0
        z3_time_post = 0
        princess_time_pre = 0
        princess_time_post = 0
        cvc4_time_pre = 0
        cvc4_time_post = 0
        cvc5_time_pre = 0
        cvc5_time_post = 0
        mc2_time_post = 0


        pre_z3_times, post_z3_times, pre_cvc5_times, post_cvc5_times, post_mc2_times = [], [], [], [],[]

        pre_reduction_z3_sat, pre_reduction_z3_unsat, pre_reduction_z3_timeout = 0, 0, 0
        pre_reduction_princess_sat, pre_reduction_princess_unsat, pre_reduction_princess_timeout = 0, 0, 0
        pre_reduction_cvc4_sat, pre_reduction_cvc4_unsat, pre_reduction_cvc4_timeout = 0, 0, 0
        pre_reduction_cvc5_sat, pre_reduction_cvc5_unsat, pre_reduction_cvc5_timeout = 0, 0, 0


        post_reduction_z3_sat, post_reduction_z3_unsat, post_reduction_z3_timeout = 0, 0, 0
        post_reduction_princess_sat, post_reduction_princess_unsat, post_reduction_princess_timeout = 0, 0, 0
        post_reduction_cvc4_sat, post_reduction_cvc4_unsat, post_reduction_cvc4_timeout = 0, 0, 0
        post_reduction_cvc5_sat, post_reduction_cvc5_unsat, post_reduction_cvc5_timeout = 0, 0, 0
        post_reduction_mc2_sat, post_reduction_mc2_unsat, post_reduction_mc2_timeout = 0, 0, 0

        sat_unsat_dict = {}

        # files = os.listdir(t + folder)
        # name = "../QF_DT" + t[9:] + folder + "*.smt2"
        # print(name)
        files = glob.glob(t + folder + "*.smt2")

        for file_name in files[50:]:
            print(file_name)
            reduced_file_name = t + folder[:-1] + "reduced/REDUCED" +  file_name[len(t+folder):]
            start_time = time.time()
            smt_query_post_reduction = run_ocaml_on_smt2(file_name)

            reduction_time = time.time() - start_time

            print("Reduction Time: ", reduction_time)
            total_reduction_time += reduction_time

            if smt_query_post_reduction == "TIMEOUT":
                print("TIMED OUT on Reduction")
                total_time = timeout + 1
                z3_time_pre += total_time
                pre_z3_times.append(total_time)
                z3_time_post += total_time
                post_z3_times.append(total_time)
                cvc5_time_pre += total_time
                pre_cvc5_times.append(total_time)
                cvc5_time_post += total_time
                post_cvc5_times.append(total_time)
                mc2_time_post += total_time
                post_mc2_times.append(total_time)

                # # z3 solver for pre reduction
                start_time = time.time()
                pre_reduction_z3 = os.popen("z3 -T:" + str(timeout) + " " + file_name)

                pre_reduction_z3 = pre_reduction_z3.read()[0]
                total_time = time.time() - start_time
                if pre_reduction_z3 == "s":
                    pre_reduction_z3_sat += 1
                    sat_unsat_dict[file_name] = "SAT"
                    print("SAT for z3 pre: ", total_time)
                elif pre_reduction_z3 == "u":
                    pre_reduction_z3_unsat += 1
                    sat_unsat_dict[file_name] = "UNSAT"
                    print("UNSAT for z3 pre: ", total_time)
                else:
                    pre_reduction_z3_timeout += 1
                    sat_unsat_dict[file_name] = "TIMEOUT"
                    total_time = timeout + 1
                
                z3_time_pre += total_time
                pre_z3_times.append(total_time)

                # cvc5 solver for pre-reduction
                start_time = time.time()
                pre_reduction_cvc5 = os.popen("cvc5 --tlimit=" + str(timeout * 1000) + " " + file_name)
                pre_reduction_cvc5 = pre_reduction_cvc5.read()
                total_time = time.time() - start_time

                if pre_reduction_cvc5 != "":
                    pre_reduction_cvc5 = pre_reduction_cvc5[0]
                    if pre_reduction_cvc5 == "s":
                        pre_reduction_cvc5_sat += 1
                        if file_name[-8] != "h":
                            dont_match.append(file_name)
                        print("SAT for cvc5 pre: ", total_time)
                    elif pre_reduction_cvc5 == "u":
                        pre_reduction_cvc5_unsat += 1
                        if file_name[-8] != "b":
                            dont_match.append(file_name)
                        print("UNSAT for cvc5 pre: ", total_time)
                    else:
                        pre_reduction_cvc5_timeout += 1
                        total_time = timeout + 1
                else:
                    pre_reduction_cvc5_timeout += 1
                    total_time = timeout + 1
                cvc5_time_pre += total_time
                pre_cvc5_times.append(total_time)
                continue

            print(smt_query_post_reduction, file=open(reduced_file_name, 'w'))

            # # z3 solver
            start_time = time.time()
            pre_reduction_z3 = os.popen("z3 -T:" + str(timeout) + " " + file_name)

            pre_reduction_z3 = pre_reduction_z3.read()[0]
            total_time = time.time() - start_time
            if pre_reduction_z3 == "s":
                pre_reduction_z3_sat += 1
                sat_unsat_dict[file_name] = "SAT"
                print("SAT for z3 pre: ", total_time)
            elif pre_reduction_z3 == "u":
                pre_reduction_z3_unsat += 1
                sat_unsat_dict[file_name] = "UNSAT"
                print("UNSAT for z3 pre: ", total_time)
            else:
                pre_reduction_z3_timeout += 1
                sat_unsat_dict[file_name] = "TIMEOUT"
                total_time = timeout + 1
            
            z3_time_pre += total_time
            pre_z3_times.append(total_time)



            start_time = time.time()
            post_reduction_z3 = os.popen("z3 -T:" + str(timeout) + " " + reduced_file_name)
            post_reduction_z3 = post_reduction_z3.read()[0]
            total_time = time.time() - start_time
            if post_reduction_z3 == "s":
                post_reduction_z3_sat += 1
                print("SAT for z3 post: ", total_time)
            elif post_reduction_z3 == "u":
                post_reduction_z3_unsat += 1
                print("UNSAT for z3 post: ", total_time)
            else:
                post_reduction_z3_timeout += 1
                total_time = timeout + 1
            z3_time_post += total_time + reduction_time
            post_z3_times.append(total_time + reduction_time)  



            # # princess solver
            # start_time = time.time()
            # with open("output.txt", "w") as f:
            #     # Run a command and redirect the output to the file
            #     # p = subprocess.Popen("ls -l", shell=True, stdout=f, stderr=f)
            #     # # Wait for the command to complete
            #     # p.wait()
            #     pre_reduction_princess = subprocess.Popen("/Users/amarshah/downloads/princess-bin-2022-11-03/princess " + "./results/" + str(j) + "PreReduction.smt2", shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            #     stdout, stderr = pre_reduction_princess.communicate()

            # pre_reduction_princess = stdout.decode()[0]
            # princess_time_pre += time.time() - start_time
            # if pre_reduction_princess == "s":
            #     pre_reduction_princess_sat += 1
            # elif pre_reduction_princess == "u":
            #     pre_reduction_princess_unsat += 1
            # else:
            #     pre_reduction_princess_timeout += 1

            # start_time = time.time()
            # with open("output.txt", "w") as f:
            #     post_reduction_princess = subprocess.Popen("/Users/amarshah/downloads/princess-bin-2022-11-03/princess " + "./results/" + str(j) + "PostReduction.smt2", shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            #     stdout, stderr = post_reduction_princess.communicate()
            # post_reduction_princess = stdout.decode()[0]
            # princess_time_post += time.time() - start_time
            # if post_reduction_princess == "s":
            #     post_reduction_princess_sat += 1
            # elif post_reduction_princess == "u":
            #     post_reduction_princess_unsat += 1
            # else:
            #     post_reduction_princess_timeout += 1

            # cvc4 solver
            # start_time = time.time()
            # pre_reduction_cvc4 = os.popen("cvc4 --tlimit=300000 " + file_name)
            # pre_reduction_cvc4 = pre_reduction_cvc4.read()
            # cvc4_time_pre += time.time() - start_time
            # if pre_reduction_cvc4 != "":
            #     pre_reduction_cvc4 = pre_reduction_cvc4[0]
            #     if pre_reduction_cvc4 == "s":
            #         pre_reduction_cvc4_sat += 1
            #     elif pre_reduction_cvc4 == "u":
            #         pre_reduction_cvc4_unsat += 1
            #     else:
            #         pre_reduction_cvc4_timeout += 1
            # else:
            #     pre_reduction_cvc4_timeout += 1


            # start_time = time.time()
            # post_reduction_cvc4 = os.popen("cvc4 --tlimit=300000 " + reduced_file_name)
            # post_reduction_cvc4 = post_reduction_cvc4.read()[0]
            # cvc4_time_post += time.time() - start_time

            # if post_reduction_cvc4 != "":
            #     post_reduction_cvc4 = post_reduction_cvc4[0]
            #     if post_reduction_cvc4 == "s":
            #         post_reduction_cvc4_sat += 1
            #     elif post_reduction_cvc4 == "u":
            #         post_reduction_cvc4_unsat += 1
            #     else:
            #         post_reduction_cvc4_timeout += 1
            # else:
            #     post_reduction_cvc4_timeout += 1

            # if pre_reduction_z3 == post_reduction_z3 and pre_reduction_z3 == "s":
            #     match_sat.append(file_name)
            # elif pre_reduction_z3 == post_reduction_z3 and pre_reduction_z3 == "u":
            #     match_unsat.append(file_name)
            # elif (pre_reduction_z3 == "s" and post_reduction_z3 == "u") or (pre_reduction_z3 == "u" and post_reduction_z3 == "s"):
            #     dont_match.append(file_name)
            # else:
            #     timeout.append(file_name)
                

            # cvc5 solver
            start_time = time.time()
            pre_reduction_cvc5 = os.popen("cvc5 --tlimit=" + str(timeout * 1000) + " " + file_name)
            pre_reduction_cvc5 = pre_reduction_cvc5.read()
            total_time = time.time() - start_time

            if pre_reduction_cvc5 != "":
                pre_reduction_cvc5 = pre_reduction_cvc5[0]
                if pre_reduction_cvc5 == "s":
                    pre_reduction_cvc5_sat += 1
                    if file_name[-8] != "h" and file_name not in dont_match:
                        dont_match.append(file_name)
                    print("SAT for cvc5 pre: ", total_time)
                elif pre_reduction_cvc5 == "u":
                    if file_name[-8] != "b" and file_name not in dont_match:
                        dont_match.append(file_name)
                    pre_reduction_cvc5_unsat += 1
                    print("UNSAT for cvc5 pre: ", total_time)
                else:
                    pre_reduction_cvc5_timeout += 1
                    total_time = timeout + 1
            else:
                pre_reduction_cvc5_timeout += 1
                total_time = timeout + 1
            cvc5_time_pre += total_time
            pre_cvc5_times.append(total_time)



            start_time = time.time()
            post_reduction_cvc5 = os.popen("cvc5 --tlimit=" + str(timeout * 1000) + " " + reduced_file_name)
            post_reduction_cvc5 = post_reduction_cvc5.read()
            total_time = time.time() - start_time

            if post_reduction_cvc5 != "":
                post_reduction_cvc5 = post_reduction_cvc5[0]
                if post_reduction_cvc5 == "s":
                    post_reduction_cvc5_sat += 1
                    print("SAT for cvc5 post: ", total_time)
                elif post_reduction_cvc5 == "u":
                    post_reduction_cvc5_unsat += 1
                    print("UNSAT for cvc5 post: ", total_time)
                else:
                    post_reduction_cvc5_timeout += 1
                    total_time = timeout + 1
            else:
                post_reduction_cvc5_timeout += 1
                total_time = timeout + 1
            cvc5_time_post += total_time
            post_cvc5_times.append(total_time)



            #for mc2

            start_time = time.time()
            post_reduction_mc2 = os.popen("mc2 -t " + str(timeout) + " " + reduced_file_name)
            post_reduction_mc2 = post_reduction_mc2.read() #[52]
            total_time = time.time() - start_time


            if post_reduction_mc2 != "Spaceout":
                post_reduction_mc2 = post_reduction_mc2[0]
                if post_reduction_mc2 == "S":
                    print("SAT for mc2 post: ", total_time)
                    if file_name[-8] != "h" and file_name not in dont_match:
                        dont_match.append(file_name)
                    post_reduction_mc2_sat += 1
                elif post_reduction_mc2 == "U":
                    print("UNSAT for mc2 post: ", total_time)
                    if file_name[-8] != "b" and file_name not in dont_match:
                        dont_match.append(file_name)
                    post_reduction_mc2_unsat += 1
                else:
                    post_reduction_mc2_timeout += 1
                    total_time = timeout + 1
            else:
                post_reduction_mc2_timeout +=1
                total_time = timeout + 1
            
            mc2_time_post += total_time + reduction_time
            post_mc2_times.append(total_time + reduction_time)


        # print("match sat:", match_sat)
        # print("match unsat:", match_unsat)
        print("don't match:", dont_match)
        print("timeout: ", timeout)

        print("Reduction Time:", total_reduction_time)
        print("z3 Time Preprocessing:", z3_time_pre)
        print("z3 times Pre-Processing:", pre_z3_times)

        print("z3 Time Postprocessing:", z3_time_post)
        print("z3 times Post-Processing:", post_z3_times)

        # print("Princess Time Preprocessing:", princess_time_pre)
        # print("Princess Time Postprocessing:", princess_time_post)
        print("cvc4 Time Preprocessing:", cvc4_time_pre)
        print("cvc4 Time Postprocessing:", cvc4_time_post)
        print("cvc5 Time Preprocessing:", cvc5_time_pre)
        print("cvc5 times Pre-Processing:", pre_cvc5_times)
        print("cvc5 Time Postprocessing:", cvc5_time_post)
        print("cvc5 times postprocessing", post_cvc5_times)
        print("mc2 Time Postprocessing:", mc2_time_post)
        print("mc2 times Post-Processing:", post_mc2_times)

        print("SAT-UNSAT dict", sat_unsat_dict)

        print("Z3 Pre-Reduction SAT: ", pre_reduction_z3_sat)
        print("Z3 Pre-Reduction UNSA: ", pre_reduction_z3_unsat)
        print("Z3 Pre-Reduction Timeout: ", pre_reduction_z3_timeout)

        print("Z3 post-Reduction SAT: ", post_reduction_z3_sat)
        print("Z3 post-Reduction UNSA: ", post_reduction_z3_unsat)
        print("Z3 post-Reduction Timeout: ", post_reduction_z3_timeout)

        # print("princess Pre-Reduction SAT: ", pre_reduction_princess_sat)
        # print("princess Pre-Reduction UNSA: ", pre_reduction_princess_unsat)
        # print("princess Pre-Reduction Timeout: ", pre_reduction_princess_timeout)

        # print("princess post-Reduction SAT: ", post_reduction_princess_sat)
        # print("princess post-Reduction UNSA: ", post_reduction_princess_unsat)
        # print("princess post-Reduction Timeout: ", post_reduction_princess_timeout)

        # print("cvc4 Pre-Reduction SAT: ", pre_reduction_cvc4_sat)
        # print("cvc4 Pre-Reduction UNSA: ", pre_reduction_cvc4_unsat)
        # print("cvc4 Pre-Reduction Timeout: ", pre_reduction_cvc4_timeout)

        # print("cvc4 post-Reduction SAT: ", post_reduction_cvc4_sat)
        # print("cvc4 post-Reduction UNSA: ", post_reduction_cvc4_unsat)
        # print("cvc4 post-Reduction Timeout: ", post_reduction_cvc4_timeout)
            
        print("cvc5 Pre-Reduction SAT: ", pre_reduction_cvc5_sat)
        print("cvc5 Pre-Reduction UNSA: ", pre_reduction_cvc5_unsat)
        print("cvc5 Pre-Reduction Timeout: ", pre_reduction_cvc5_timeout)

        print("cvc5 post-Reduction SAT: ", post_reduction_cvc5_sat)
        print("cvc5 post-Reduction UNSA: ", post_reduction_cvc5_unsat)
        print("cvc5 post-Reduction Timeout: ", post_reduction_cvc5_timeout)

        print("mc2 post-Reduction SAT: ", post_reduction_mc2_sat)
        print("mc2 post-Reduction UNSA: ", post_reduction_mc2_unsat)
        print("mc2 post-Reduction Timeout: ", post_reduction_mc2_timeout)