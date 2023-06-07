
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
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (= l1 Nil) (= l1 l1) (= l3 Nil)) )
(assert (and (= l2 Nil) (is-Nil Nil)) )
(assert (or (is-Nil l1) (= l2 Nil) (= l0 l3) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (= l3 l3) )
(check-sat)
