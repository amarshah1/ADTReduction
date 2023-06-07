
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
(assert (= l1 l3) )
(assert (is-Nil Nil) )
(assert (not (= l0 l0)) )
(assert (= l0 Nil) )
(assert (and (is-Nil l3) (= l1 l1) (= l2 l3) (= l0 Nil)) )
(assert (and (= l0 Nil) (= l3 Nil) (= l1 Nil) (= l0 Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
