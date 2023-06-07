
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
(assert (not (is-Nil Nil)) )
(assert (not (= l0 l1)) )
(assert (is-Nil l2) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l2 l2) (= l2 Nil)) )
(assert (or (= l3 Nil) (= l3 l0) (is-Cons Nil) (= l0 Nil)) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(assert (is-Cons l1) )
(check-sat)
