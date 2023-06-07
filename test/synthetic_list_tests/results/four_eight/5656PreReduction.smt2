
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
(assert (is-Nil l1) )
(assert (and (= l2 Nil) (= l3 Nil) (= l0 Nil) (= l2 Nil)) )
(assert (not (is-Nil l2)) )
(assert (= l0 l3) )
(assert (= l3 Nil) )
(assert (= l2 l2) )
(assert (not (= l3 Nil)) )
(assert (is-Nil Nil) )
(check-sat)