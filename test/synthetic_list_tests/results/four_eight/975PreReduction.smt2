
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
(assert (or (is-Nil l2) (= l3 Nil) (= l3 l1)) )
(assert (or (= l3 l3) (= l3 Nil)) )
(assert (or (= l0 l1) (= l3 l0)) )
(assert (is-Nil l3) )
(assert (is-Nil l3) )
(assert (= l0 l0) )
(assert (= l2 Nil) )
(assert (and (is-Nil l0) (= l0 l2) (= l2 Nil) (= l1 Nil)) )
(check-sat)
