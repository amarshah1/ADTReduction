
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (or (is-Nil Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (or (= l1 Nil) (= l3 Nil) (is-Nil l2)) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (= l3 Nil) (= l2 Nil) (is-Cons l0)) )
(check-sat)