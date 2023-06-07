
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
(assert (and (is-Nil l1) (= l0 Nil)) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l1 l2) (= l2 Nil)) )
(assert (or (= l2 Nil) (is-Cons Nil) (= l0 l0)) )
(assert (not (is-Nil Nil)) )
(assert (and (is-Nil l2) (= l3 l0) (= l1 Nil) (is-Cons l3)) )
(assert (not (= l0 Nil)) )
(assert (not (= l0 l1)) )
(assert (is-Nil l1) )
(check-sat)
