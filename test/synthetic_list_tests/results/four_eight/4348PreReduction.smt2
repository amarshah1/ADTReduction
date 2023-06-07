
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
(assert (not (= l2 Nil)) )
(assert (not (is-Cons l1)) )
(assert (is-Nil l0) )
(assert (and (is-Cons Nil) (= l2 l3)) )
(assert (= l0 Nil) )
(assert (or (is-Cons Nil) (= l2 Nil)) )
(assert (or (is-Cons l0) (is-Nil l1) (= l1 Nil)) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l0 l1) (= l2 Nil)) )
(check-sat)
