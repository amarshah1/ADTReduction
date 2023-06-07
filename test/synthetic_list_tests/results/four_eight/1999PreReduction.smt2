
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
(assert (= l2 Nil) )
(assert (is-Nil l1) )
(assert (or (= l0 l3) (= l2 Nil)) )
(assert (and (= l1 l0) (is-Nil Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (or (is-Cons Nil) (= l0 l3)) )
(assert (and (= l0 Nil) (= l1 l0)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil l3) (= l3 l3)) )
(check-sat)