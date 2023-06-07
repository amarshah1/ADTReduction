
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
(assert (or (= l2 Nil) (is-Cons l1) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (= l3 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (or (= l0 l0) (= l0 Nil) (= l3 l1) (= l2 l2)) )
(assert (not (is-Nil l3)) )
(assert (is-Cons Nil) )
(assert (is-Nil l0) )
(check-sat)
