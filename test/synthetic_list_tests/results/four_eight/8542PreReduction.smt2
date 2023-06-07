
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
(assert (is-Nil l1) )
(assert (and (is-Cons Nil) (is-Nil l2) (= l3 l2) (= l0 l3)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (= l0 l0) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(check-sat)
