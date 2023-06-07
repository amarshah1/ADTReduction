
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
(assert (or (is-Cons Nil) (= l2 Nil) (is-Nil l0) (= l3 l0)) )
(assert (and (= l0 l0) (is-Cons l1)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l3 l1) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l2) )
(assert (is-Nil l0) )
(assert (is-Nil Nil) )
(check-sat)
