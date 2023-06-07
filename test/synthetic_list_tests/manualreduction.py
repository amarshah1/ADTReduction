# Will reduce from the theory of ADT and equality (no uninterpreted functions) to the theory of EUF
# Will assume that queries are given to us in flattened DNF as a list of lists (really just need flattened NNF, but will keep it DNF for rn )
# Will also assume that everything is well typed
# All stmts are given to us as 3-tuples: ( · , · , · )
# First element in tuple will be "function", "equality"  to indicate it is one of the three
# for "function", the second element is the name of the function, "Cons", "Nil", "is-Cons", "is-Nil", "Head", "Tail" is the functions name
#                 the third element is a list of arguements
# for equality the second and third elements are the two things that we set equal to each other
# for "and", the second element will be a list of sentences,
#            the third element can be anything
# for "or", the second element will be a list of sentences,
#            the third element can be anything
# for "variable" the second element is the type of variable, right now it


def reduction_for_and_or(query, variables, contrived_var_counter):
    """ The query is a list(corresponding to an and) in NNF
    The variables is a dictionary with the keys as """
    return_clause = []
    for stmt in query:
        inner_clause = []
        if stmt[0] == "and" or stmt[0] == "or":
            inner_reduction, variables, contrived_var_counter = reduction_for_and_or(stmt[1], variables, contrived_var_counter)
            # print(inner_reduction)
            inner_clause = [(stmt[0], inner_reduction, [])]
        elif stmt[0] == "not":
            inner_clause = [stmt]
        elif stmt[0] == "function":
            if stmt[1] == "is-Cons":
                # need to introduce two contrived variables in order to do the blasting
                var = stmt[2][0]
                cv1, cv2 = "cv" + str(contrived_var_counter), "cv" + str(contrived_var_counter + 1)
                variables[cv1] =  "Real"
                variables[cv2] = "MyList"
                contrived_var_counter += 2
                inner_clause.append(stmt)
                inner_clause.append(("equality", var, ("function", "Cons", [cv1, cv2])))
                inner_clause.append(("equality", cv1, ("function", "Head", [var])))
                inner_clause.append(("equality", cv2, ("function", "Tail", [var])))
            elif stmt[1] == "is-Nil":
                var = stmt[2][0]
                inner_clause.append(stmt)
                inner_clause.append(("equality", var, ("function", "Nil", [])))
            else:
                return "Error: incorrectly formatted input1"
        elif stmt[0] == "equality":
            if stmt[1] not in variables.keys():
                return "Error: incorrectly formatted input2"
            rhs = stmt[2]
            if isinstance(stmt[2], str):
                if stmt[2] in variables.keys():
                    inner_clause.append(stmt)
            elif rhs[0] != "function":
                return "Error: incorrectly formatted input3"
            elif rhs[1] == "Cons":
                head = rhs[2][0]
                tail = rhs[2][1]
                # print(head, tail)
                inner_clause.append(stmt)
                inner_clause.append(("function", "is-Cons", stmt[1]))
                inner_clause.append(("equality", head, ("function", "Head", stmt[1])))
                inner_clause.append(("equality", tail, ("function", "Tail", stmt[1])))
            elif rhs[1] == "Nil":
                inner_clause.append(stmt)
                inner_clause.append(("function", "is-Nil", [stmt[1]])) #this is it
            elif rhs[1] == "Head" or rhs[1] == "Tail":
                var = rhs[2][0]
                #case 1
                first_clause = []
                cv1, cv2 = "cv" + str(contrived_var_counter), "cv" + str(contrived_var_counter + 1)
                variables[cv1] = "Real"
                variables[cv2] = "MyList"
                contrived_var_counter += 2
                first_clause.append(stmt)
                first_clause.append(("equality", var, ("function", "Cons", [cv1, cv2])))
                first_clause.append(("equality", cv1, ("function", "Head", [var])))
                first_clause.append(("equality", cv2, ("function", "Tail", [var])))

                #case 2
                second_clause = ("equality", var, ("function", "Nil", []))
                inner_clause.append(stmt)
                inner_clause.append(("or", [("and", first_clause, ['firstclause']), second_clause]))
            elif rhs[1] == "is-Cons":
                return "Error: incorrectly formatted input4"
            elif rhs[1] == "is-Nil":
                return "Error: incorrectly formatted input5"
            else:
                print("reached last case")
        # print(inner_clause)
        return_clause.append(("and", inner_clause, ["codehere"]))#("and", inner_clause, [])
    return return_clause, variables, contrived_var_counter

def reduction_with_axioms(query, variables):
    keys = list(variables.keys()) 
    n = len(variables) #Note that these two lines have to be before the reduction_for_and_or since then variables gets modified
    psi, new_vars, contrived_var_counter = reduction_for_and_or(query, variables, 0)
    #now need to add in the axioms
    axioms = []
    for var in keys + ["Nil"]:
        if var == "Nil" or variables[var] == "MyList":
            axioms.append(("or", [("function", "is-Cons", [var]), ("function", "is-Nil", [var])], []))
            axioms.append(("or", [("not", ("function", "is-Cons", [var]), []), ("not", ("function", "is-Nil", [var]), [])], []))
            axioms.append(("or", [("not", ("function", "is-Nil", [var]), []), ("equality", var, ("function", "Nil", []))], [])) #added this to fix 1611, 1851: not sure why this is not in reduction
    for var in keys:
        if variables[var] == "MyList":
            acyclicality_axioms, contrived_var_counter, new_vars = create_acyclicality_axioms([var], var, contrived_var_counter, n, new_vars)
            # print(acyclicality_axioms)
            axioms.append(("and", acyclicality_axioms, []))

    return psi + axioms + [("not", ("function", "is-Cons", [("function", "Nil", [])]), [])] + [("function", "is-Nil", [("function", "Nil", [])])], new_vars

def create_acyclicality_axioms(vars, lowest_level, contrived_var_counter, depth, variables):
    if depth == 0:
        return [], contrived_var_counter, variables
    cv = "cv" + str(contrived_var_counter)
    contrived_var_counter += 1
    variables[cv] = "MyList"
    acyclicality_axioms = []
    acyclicality_axioms.append(("equality", cv, ("function", "Tail", [lowest_level])))
    for var in vars:
        acyclicality_axioms.append(("not", ("equality", cv, var), []))
    new_ayclicality_axioms, contrived_var_counter, variables = create_acyclicality_axioms(vars + [lowest_level], cv, contrived_var_counter, depth - 1, variables)
    acyclicality_axioms += new_ayclicality_axioms
    return acyclicality_axioms, contrived_var_counter, variables

# next: Need a way to turn one of these queries into SMT

def string_addition(a):
    return query_to_smt(a) + " "

def query_to_smt(query, pre_reduction = 0, mc2 = 0):
    if isinstance(query, str):
        return query
    if isinstance(query, int):
        return str(query)
    if query[0] == "equality":
        return "(= " + query_to_smt(query[1]) + " " + query_to_smt(query[2]) + ")"
    elif query[0] == "function":
        if query[1] == "Nil":
            return "Nil"
        # if pre_reduction == 1 and query[1] == "is-Nil":
        #     return "(" + query_to_smt(query[2][0]) + " is Nil)"
        # if pre_reduction == 1 and query[1] == "is-Cons":
        #     return "(" + query_to_smt(query[2][0]) + " is Cons)"
        return "(" + query[1] + " " + " ".join([query_to_smt(q) for q in query[2]]) + ")"
    elif query[0] == "and" or query[0] == "or":
        return "(" + query[0] + " " + " ".join([query_to_smt(q) for q in query[1]]) + ")"
    elif query[0] == "not":
        return "(not " + query_to_smt(query[1]) + ")"
    else:
        print(query)
        return "Incorrectly formatted query"

def query_list_to_smt(query_list, variables = {}, pre_reduction = 0, mc2 = 0):
    if pre_reduction == 0 and mc2 == 0:
        string = """
(set-logic UF) \n
(declare-sort MyList 0) \n
(declare-fun Nil () MyList) \n
(declare-fun Cons (Real MyList) MyList) \n
(declare-fun Head (MyList) Real) \n
(declare-fun Tail (MyList) MyList) \n
(declare-fun is-Nil (MyList) Bool) \n
(declare-fun is-Cons (MyList) Bool) \n"""
    elif pre_reduction == 0 and mc2 ==1:
        string = """
(declare-sort MyList 0) \n
(declare-fun Nil () MyList) \n
(declare-fun Cons (Real MyList) MyList) \n
(declare-fun Head (MyList) Real) \n
(declare-fun Tail (MyList) MyList) \n
(declare-fun is-Nil (MyList) Bool) \n
(declare-fun is-Cons (MyList) Bool) \n"""
    else:
        string = """
(set-logic ALL) \n
(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) \n"""


    for var in variables.keys():
        string += "(declare-fun " + var + " () " + variables[var] + ") \n"

    for query in query_list:
        string += "(assert " + query_to_smt(query, pre_reduction=pre_reduction) + " )\n"
    
    string += "(check-sat)"
    return string
