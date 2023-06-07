
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
(assert (and (= l0 Nil) (is-Cons Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (= l2 l2) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil l1) )
(assert (and (= l2 Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(check-sat)