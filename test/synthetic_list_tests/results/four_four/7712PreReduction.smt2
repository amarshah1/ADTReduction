
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
(assert (not (is-Nil l3)) )
(assert (and (= l0 Nil) (= l1 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (is-Cons l3) )
(check-sat)