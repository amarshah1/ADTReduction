
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
(assert (and (is-Nil Nil) (is-Cons Nil) (= l2 l0) (is-Nil Nil)) )
(assert (and (= l1 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l2 l2) (= l3 Nil) (is-Cons Nil)) )
(assert (and (is-Nil l2) (is-Cons Nil) (= l3 l3)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)