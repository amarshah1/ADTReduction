
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
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (and (= l3 Nil) (= l0 Nil) (= l0 l3) (is-Nil l1)) )
(assert (= l0 Nil) )
(assert (= l2 Nil) )
(assert (and (is-Nil Nil) (= l2 Nil) (= l1 l2)) )
(assert (not (is-Nil l1)) )
(check-sat)
