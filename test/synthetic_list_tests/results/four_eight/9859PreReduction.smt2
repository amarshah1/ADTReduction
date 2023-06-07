
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
(assert (or (= l0 l3) (is-Nil Nil)) )
(assert (is-Nil l0) )
(assert (and (= l2 Nil) (= l0 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (= l3 l1) )
(assert (and (= l0 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (not (is-Cons l3)) )
(assert (not (= l0 Nil)) )
(assert (or (is-Nil Nil) (= l2 l1) (is-Nil l0)) )
(check-sat)
