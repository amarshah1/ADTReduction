import random
from manualreduction import *
# import z3
import os
import time
import sys
import subprocess


#variable for how deep we want to generate our queries
MAXDEPTH = 1

# Define the possible ADT list queries in Python tuples format
adt_list_queries = [
    ("function", "is-Cons", ["MyList"]),
    ("function", "is-Nil", ["MyList"]),
    ("equality", "MyList", "MyList"),
    ("and", [["function", "is-Cons", ["MyList"]], ["function", "is-Nil", ["MyList"]]], []),
    ("or", [["function", "Head", ["MyList"]], ["function", "Tail", ["MyList"]]], []),
    ("not", ["equality", "MyList", "Nil"])
]


adt_list_terms = [
    ("function", "Cons", ["Real", "MyList"]),
    ("function", "Nil", []),
    ("function", "Head", ["MyList"]),
    ("function", "Tail", ["MyList"]),
    ("function", "Cons", ["Real", "MyList"]),
    ("function", "Nil", []),
    ("function", "Head", ["MyList"]),
    ("function", "Tail", ["MyList"])
]



# # Define the possible values for the arguments of the ADT list queries
# adt_list_arguments = {
#     "Real": [random.randint(0, 10)],
#     "MyList": [("Cons", random.choice(list(adt_list_arguments.keys()))), ("Nil",)],
# }

#Define the possible values for the arguments of the ADT list queries
adt_list_arguments = {
    "Real": [random.randint(0, 10)],
    "Nil": [],
}

# adt_list_arguments["MyList"] = [("Cons", random.choice(list(adt_list_arguments.keys()))), ("Nil",)]

def get_random_list_term(depth = 0):
    term = random.choice(adt_list_terms + list_variables)
    if isinstance(term, tuple):
        fnc = term[1]
        if fnc == "Nil" or depth >= MAXDEPTH:
            return ("function", "Nil", [])
        elif fnc == "Cons":
            new_int = random.choice(int_terms + int_variables)
            new_list = get_random_list_term(depth + 1)
            return ("function", "Cons", [new_int, new_list])
        else:
            new_list = get_random_list_term(depth+1)
            return ("function", fnc, [new_list])
    else:
        return term

# Define a function to randomly fuzz the ADT list queries
def fuzz_adt_list_query(depth  = 0):
    query_type = random.choice(adt_list_queries)
    if query_type[0] == "function":
        args = []
        for arg in query_type[2]:
            # arg_value = random.choice(adt_list_arguments[arg])
            if arg == "MyList":
                args.append(get_random_list_term(depth + 1))
            else:
                args.append(random.choice(int_terms + int_variables))
        return (query_type[0], query_type[1], args)
    elif query_type[0] == "equality" or depth >= MAXDEPTH:
        return ("equality", random.choice(list_variables), get_random_list_term(depth + 1))
    elif query_type[0] == "and" or query_type[0] == "or":
        # print([fuzz_adt_list_query(depth + 1) for i in range(random.randint(2, 4))])
        return (query_type[0], [fuzz_adt_list_query(depth + 1) for i in range(random.randint(2, 4))], [])
    elif query_type[0] == "not":
        return (query_type[0], fuzz_adt_list_query(depth + 1), [])
    else:
        return None

# Define a function to convert the fuzzed ADT list queries to SMT format
def fuzzed_queries_to_smt(queries, pre_reduction = 0, variables = {}):
    return query_list_to_smt([query for query in queries if query is not None], variables = variables, pre_reduction=pre_reduction)

# A function that runs the Ocaml that does the reductions for us
def run_ocaml_on_smt2(smt2_file_path, ocaml_executable_path = "../../_build/default/src/Fullreduction.exe"):
    cmd = [ocaml_executable_path, smt2_file_path]
    result = subprocess.run(cmd, capture_output=True, text=True)
    
    if result.returncode != 0:
        return f"Error: {result.stderr}"
    else:
        return result.stdout

    # cmd = ["ocaml", ocaml_executable_path, smt2_file_path]
    # result = subprocess.run(cmd, capture_output=True, text=True)
    
    # if result.returncode != 0:
    #     print(f"Error: {result.stderr}")
    # else:
    #     print(result.stdout)


for t in [(2, 4, "two_four"), (4, 8, "four_eight"), (4, 4, "four_four")]:
    print("----------------------------------CASE: ", t, "----------------------------")

    num_variables, num_asserts, current_folder = t[0], t[1], t[2]
    int_terms = [i for i in range(10)]

    list_variables = ["l" + str(i) for i in range(num_variables)]
    int_variables = ["i" + str(j) for j in range(2)]

    variables = {}

    for l in list_variables:
        variables[l] = "MyList"

    for i in int_variables:
        variables[i] = "Real"
    match_sat = []
    match_unsat = [] 
    dont_match =[]

    # Generate 10 fuzzed ADT list queries and print them in SMT format

    reduction_time = 0
    z3_time_pre = 0
    z3_time_post = 0
    princess_time_pre = 0
    princess_time_post = 0
    cvc4_time_pre = 0
    cvc4_time_post = 0
    cvc5_time_pre = 0
    cvc5_time_post = 0
    mc2_time_post = 0


    pre_reduction_z3_sat, pre_reduction_z3_unsat, pre_reduction_z3_timeout = 0, 0, 0
    pre_reduction_princess_sat, pre_reduction_princess_unsat, pre_reduction_princess_timeout = 0, 0, 0
    pre_reduction_cvc4_sat, pre_reduction_cvc4_unsat, pre_reduction_cvc4_timeout = 0, 0, 0
    pre_reduction_cvc5_sat, pre_reduction_cvc5_unsat, pre_reduction_cvc5_timeout = 0, 0, 0


    post_reduction_z3_sat, post_reduction_z3_unsat, post_reduction_z3_timeout = 0, 0, 0
    post_reduction_princess_sat, post_reduction_princess_unsat, post_reduction_princess_timeout = 0, 0, 0
    post_reduction_cvc4_sat, post_reduction_cvc4_unsat, post_reduction_cvc4_timeout = 0, 0, 0
    post_reduction_cvc5_sat, post_reduction_cvc5_unsat, post_reduction_cvc5_timeout = 0, 0, 0
    post_reduction_mc2_sat, post_reduction_mc2_unsat, post_reduction_mc2_timeout = 0, 0, 0


    for j in range(10000):

        query_list = []
        for i in range(num_asserts):
            query_list.append(fuzz_adt_list_query())

        #testing a specific edge case
        # query_list.append(("not", ("equality", "l4", ("function", "Nil", []), [])))
        # query_list.append(("not", ("function", "is-Cons", ["l4"])))
        
        smt_query_pre_reduction = fuzzed_queries_to_smt(query_list, pre_reduction=1, variables=variables)
        print(smt_query_pre_reduction, file=open("./results/" + current_folder + "/" + str(j) + "PreReduction.smt2", 'w'))

        start_time = time.time()
        smt_query_post_reduction = run_ocaml_on_smt2("./results/" + current_folder + "/" + str(j) + "PreReduction.smt2")

        reduction_time = time.time() - start_time

        print(smt_query_post_reduction, file=open("./results/" + current_folder + "/" + str(j) + "PostReduction.smt2", 'w'))

        var_copy = dict(variables)
        query_post_simple_reduction, new_variables = reduction_with_axioms(query_list, variables)
        variables = var_copy
        # print(query_post_reduction)
        start_time = time.time()
        smt_query_post_simple_reduction = fuzzed_queries_to_smt(query_post_simple_reduction, variables=new_variables)
        reduction_time = time.time() - start_time

        print(smt_query_post_simple_reduction, file=open("./results/" + current_folder + "/" + str(j) + "PostSimpleReduction.smt2", 'w'))


        # # z3 solver
        start_time = time.time()
        pre_reduction_z3 = os.popen("z3 -T:300 " + "./results/" + current_folder + "/" + str(j) + "PreReduction.smt2")
        pre_reduction_z3 = pre_reduction_z3.read()[0]
        z3_time_pre += time.time() - start_time
        if pre_reduction_z3 == "s":
            pre_reduction_z3_sat += 1
        elif pre_reduction_z3 == "u":
            pre_reduction_z3_unsat += 1
        else:
            pre_reduction_z3_timeout += 1

        start_time = time.time()
        post_reduction_z3 = os.popen("z3 -T:300 " + "./results/" + current_folder + "/" + str(j) + "PostReduction.smt2")
        post_reduction_z3 = post_reduction_z3.read()[0]
        z3_time_post += time.time() - start_time
        if post_reduction_z3 == "s":
            post_reduction_z3_sat += 1
        elif post_reduction_z3 == "u":
            post_reduction_z3_unsat += 1
        else:
            post_reduction_z3_timeout += 1



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
        start_time = time.time()
        pre_reduction_cvc4 = os.popen("cvc4 --tlimit=300000 " + "./results/" + current_folder + "/" + str(j) + "PreReduction.smt2")
        pre_reduction_cvc4 = pre_reduction_cvc4.read()[0]
        cvc4_time_pre += time.time() - start_time
        if pre_reduction_cvc4 == "s":
            pre_reduction_cvc4_sat += 1
        elif pre_reduction_cvc4 == "u":
            pre_reduction_cvc4_unsat += 1
        else:
            pre_reduction_cvc4_timeout += 1

        start_time = time.time()
        post_reduction_cvc4 = os.popen("cvc4 --tlimit=300000 " + "./results/" + current_folder + "/" + str(j) + "PostReduction.smt2")
        post_reduction_cvc4 = post_reduction_cvc4.read()[0]
        cvc4_time_post += time.time() - start_time

        if post_reduction_cvc4 == "s":
            post_reduction_cvc4_sat += 1
        elif post_reduction_cvc4 == "u":
            post_reduction_cvc4_unsat += 1
        else:
            post_reduction_cvc4_timeout += 1

        if pre_reduction_z3 == post_reduction_z3 and pre_reduction_z3 == "s":
            match_sat.append(j)
        elif pre_reduction_z3 == post_reduction_z3 and pre_reduction_z3 == "u":
            match_unsat.append(j)
        else:
            dont_match.append(j)

        # cvc5 solver
        start_time = time.time()
        pre_reduction_cvc5 = os.popen("cvc5 --tlimit=300000 " + "./results/" + current_folder + "/" + str(j) + "PreReduction.smt2")
        pre_reduction_cvc5 = pre_reduction_cvc5.read()[0]
        cvc5_time_pre += time.time() - start_time
        if pre_reduction_cvc5 == "s":
            pre_reduction_cvc5_sat += 1
        elif pre_reduction_cvc5 == "u":
            pre_reduction_cvc5_unsat += 1
        else:
            pre_reduction_cvc5_timeout += 1

        start_time = time.time()
        post_reduction_cvc5 = os.popen("cvc5 --tlimit=300000 " + "./results/" + current_folder + "/" + str(j) + "PostReduction.smt2")
        post_reduction_cvc5 = post_reduction_cvc5.read()[0]
        cvc5_time_post += time.time() - start_time

        if post_reduction_cvc5 == "s":
            post_reduction_cvc5_sat += 1
        elif post_reduction_cvc5 == "u":
            post_reduction_cvc5_unsat += 1
        else:
            post_reduction_cvc5_timeout += 1


        #for mc2

        start_time = time.time()
        post_reduction_mc2 = os.popen("mc2 -t 300 " + "./results/" + current_folder + "/" + str(j) + "PostReduction.smt2")
        post_reduction_mc2 = post_reduction_mc2.read()[52]
        mc2_time_post += time.time() - start_time
        if post_reduction_mc2 == "S":
            post_reduction_mc2_sat += 1
        elif post_reduction_mc2 == "U":
            post_reduction_mc2_unsat += 1
        else:
            post_reduction_mc2_timeout += 1


    # print("match sat:", match_sat)
    # print("match unsat:", match_unsat)
    print("don't match:", dont_match)

    print("Reduction Time:", reduction_time)
    print("z3 Time Preprocessing:", z3_time_pre)
    print("z3 Time Postprocessing:", z3_time_post)
    # print("Princess Time Preprocessing:", princess_time_pre)
    # print("Princess Time Postprocessing:", princess_time_post)
    print("cvc4 Time Preprocessing:", cvc4_time_pre)
    print("cvc4 Time Postprocessing:", cvc4_time_post)
    print("cvc5 Time Preprocessing:", cvc5_time_pre)
    print("cvc5 Time Postprocessing:", cvc5_time_post)
    print("mc2 Time Postprocessing:", mc2_time_post)

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

    print("cvc4 Pre-Reduction SAT: ", pre_reduction_cvc4_sat)
    print("cvc4 Pre-Reduction UNSA: ", pre_reduction_cvc4_unsat)
    print("cvc4 Pre-Reduction Timeout: ", pre_reduction_cvc4_timeout)

    print("cvc4 post-Reduction SAT: ", post_reduction_cvc4_sat)
    print("cvc4 post-Reduction UNSA: ", post_reduction_cvc4_unsat)
    print("cvc4 post-Reduction Timeout: ", post_reduction_cvc4_timeout)
        
    print("cvc5 Pre-Reduction SAT: ", pre_reduction_cvc5_sat)
    print("cvc5 Pre-Reduction UNSA: ", pre_reduction_cvc5_unsat)
    print("cvc5 Pre-Reduction Timeout: ", pre_reduction_cvc5_timeout)

    print("cvc5 post-Reduction SAT: ", post_reduction_cvc5_sat)
    print("cvc5 post-Reduction UNSA: ", post_reduction_cvc5_unsat)
    print("cvc5 post-Reduction Timeout: ", post_reduction_cvc5_timeout)

    print("mc2 post-Reduction SAT: ", post_reduction_mc2_sat)
    print("mc2 post-Reduction UNSA: ", post_reduction_mc2_unsat)
    print("mc2 post-Reduction Timeout: ", post_reduction_mc2_timeout)