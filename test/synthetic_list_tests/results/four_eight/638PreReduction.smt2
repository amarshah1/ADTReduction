
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
(assert (is-Cons Nil) )
(assert (or (= l2 l1) (= l2 l3)) )
(assert (or (is-Nil l0) (is-Cons l0) (= l0 Nil)) )
(assert (is-Nil l1) )
(assert (is-Nil Nil) )
(assert (not (= l0 l0)) )
(assert (or (= l1 Nil) (is-Cons Nil)) )
(assert (and (= l0 l2) (is-Nil l3) (= l3 Nil) (= l3 l0)) )
(check-sat)
