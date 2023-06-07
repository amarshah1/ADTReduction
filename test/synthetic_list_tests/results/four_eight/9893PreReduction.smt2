
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
(assert (or (= l1 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (is-Nil l1) (= l0 Nil)) )
(assert (= l2 l1) )
(assert (is-Nil l0) )
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(check-sat)
