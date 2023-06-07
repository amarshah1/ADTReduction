
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
(assert (and (is-Nil l2) (= l2 l3) (= l2 l1)) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (is-Cons Nil)) )
(assert (and (= l0 l3) (= l0 Nil) (is-Nil Nil)) )
(assert (or (is-Nil l2) (is-Nil Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Nil l3) )
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(check-sat)
