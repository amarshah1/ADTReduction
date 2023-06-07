
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
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(assert (or (= l2 Nil) (is-Nil l2) (= l1 l0) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l3 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l1 l0) (is-Nil Nil) (= l2 Nil)) )
(assert (= l0 Nil) )
(check-sat)
