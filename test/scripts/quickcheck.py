import random
from manualreduction import *
# from fuzzing import *
# import z3
import os
import time
import glob
import sys
import subprocess


folder = "../QF_DT2/20210312-Bouvier/reduced"
# files = glob.glob(folder + "/*.smt2")
files = ["../QF_DT2/20210312-Bouvier/vlsat3_h81.smt2","../QF_DT2/20210312-Bouvier/vlsat3_b87.smt2", "../QF_DT2/20210312-Bouvier/vlsat3_h59.smt2", "../QF_DT2/20210312-Bouvier/vlsat3_h63.smt2", "../QF_DT2/20210312-Bouvier/vlsat3_b86.smt2", "../QF_DT2/20210312-Bouvier/vlsat3_b90.smt2", "../QF_DT2/20210312-Bouvier/vlsat3_h55.smt2"]
files = ["../QF_DT2/20210312-Bouvier/vlsat3_h55.smt2"]

z3_dict = {"SAT": [], "UNSAT": [], "TIMEOUT": []}
cvc5_dict = {"SAT": [], "UNSAT": [], "TIMEOUT": []}
mc2_dict = {"SAT": [], "UNSAT": [], "TIMEOUT": []}

for file_name in files:
    print(file_name)
    start_time = time.time()
    post_reduction_z3 = os.popen("z3 -T:120 " + file_name)
    total_time = time.time() -start_time
    post_reduction_z3 = post_reduction_z3.read()[0]
    if post_reduction_z3 == "s":
        z3_dict["SAT"].append((file_name, total_time))
    elif post_reduction_z3 == "u":
        z3_dict["UNSAT"].append((file_name, total_time))
    else:
        z3_dict["TIMEOUT"].append(file_name)

    start_time = time.time()
    post_reduction_cvc5 = os.popen("cvc5 --tlimit=120000 " + file_name).read()
    total_time = time.time() - start_time
    if post_reduction_cvc5 == "":
        cvc5_dict["TIMEOUT"].append(file_name)
    else:
        post_reduction_cvc5 = post_reduction_cvc5[0]
        if post_reduction_cvc5 == "s":
            cvc5_dict["SAT"].append((file_name, total_time))
        elif post_reduction_cvc5 == "u":
            cvc5_dict["UNSAT"].append((file_name, total_time))
        else:
            cvc5_dict["TIMEOUT"].append(file_name)
    
    # post_reduction_mc2 = os.popen("mc2 -t 60 " + file_name).read()
    # if post_reduction_mc2 == "":
    #     mc2_dict["TIMEOUT"].append(file_name)
    # else:
    #     post_reduction_mc2 = post_reduction_mc2[0]
    #     if post_reduction_mc2 == "S":
    #         mc2_dict["SAT"].append(file_name)
    #     elif post_reduction_mc2 == "U":
    #         mc2_dict["UNSAT"].append(file_name)
    #     else:
    #         mc2_dict["TIMEOUT"].append(file_name)

print("Z3: ", z3_dict)
print("CVC5: ", cvc5_dict)
print("mc2: ", mc2_dict)
