(set-logic ALL)

(declare-datatypes ((MyList 0)) (((Nil) (Cons (Head Real) (Tail MyList)))))

(declare-const x MyList)
(declare-const y MyList)