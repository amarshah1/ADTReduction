
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
(assert (= l1 Nil) )
(assert (is-Nil l3) )
(assert (not (is-Cons Nil)) )
(assert (and (= l2 l1) (is-Nil Nil) (is-Nil Nil)) )
(assert (or (= l1 l2) (= l1 l2) (= l0 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l0) )
(assert (or (is-Cons Nil) (is-Cons l3) (is-Nil l1)) )
(check-sat)
