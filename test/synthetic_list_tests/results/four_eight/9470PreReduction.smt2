
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
(assert (or (is-Nil l3) (= l3 l3)) )
(assert (not (is-Nil Nil)) )
(assert (and (= l0 l2) (= l1 Nil) (= l1 l3) (= l0 Nil)) )
(assert (or (= l1 l2) (is-Cons Nil) (is-Nil Nil)) )
(assert (= l3 l1) )
(assert (not (= l1 Nil)) )
(assert (is-Nil l0) )
(assert (not (is-Nil Nil)) )
(check-sat)
