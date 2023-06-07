
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
(assert (or (is-Cons Nil) (= l0 l3) (= l2 l3)) )
(assert (and (= l3 Nil) (= l0 l3) (is-Nil l3) (= l0 l0)) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Nil l1) (= l3 l0) (is-Nil Nil)) )
(check-sat)
