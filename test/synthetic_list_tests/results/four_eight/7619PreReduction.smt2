
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
(assert (or (= l3 l0) (= l2 l3) (= l3 l0) (is-Nil l3)) )
(assert (and (= l2 Nil) (= l0 l3)) )
(assert (or (is-Nil Nil) (= l2 Nil) (= l2 l1) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l3 l0) (= l1 l1)) )
(assert (= l0 Nil) )
(assert (or (= l1 l2) (= l2 Nil) (= l0 l2) (is-Nil l1)) )
(check-sat)
