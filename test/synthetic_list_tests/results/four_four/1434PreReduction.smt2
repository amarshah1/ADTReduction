
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
(assert (and (= l1 l1) (is-Nil l1)) )
(assert (is-Nil l2) )
(assert (and (= l3 Nil) (= l3 l0) (= l3 Nil)) )
(assert (and (is-Nil Nil) (= l2 Nil)) )
(check-sat)
