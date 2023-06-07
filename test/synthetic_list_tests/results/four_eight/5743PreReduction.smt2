
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
(assert (is-Cons l0) )
(assert (is-Nil Nil) )
(assert (is-Cons l3) )
(assert (is-Nil l2) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (or (= l0 l2) (= l1 l2) (= l2 l0) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Cons Nil)) )
(check-sat)
