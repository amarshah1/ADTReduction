
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
(assert (or (is-Nil l1) (is-Cons Nil)) )
(assert (= l2 Nil) )
(assert (or (= l2 Nil) (= l1 Nil) (= l1 l3)) )
(assert (is-Cons l3) )
(assert (is-Nil l2) )
(assert (or (is-Nil l0) (is-Cons Nil) (= l3 l2) (= l2 l0)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (is-Cons Nil)) )
(check-sat)
