
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
(assert (or (= l3 l2) (is-Cons Nil) (= l0 Nil)) )
(assert (and (is-Nil Nil) (= l0 l0) (= l2 Nil) (= l2 l1)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil l2) )
(assert (and (= l0 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (is-Nil l1) )
(assert (= l3 Nil) )
(check-sat)
