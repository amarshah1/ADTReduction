
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
(assert (and (= l2 l0) (is-Nil l1) (= l2 l0) (= l2 l1)) )
(assert (or (= l3 Nil) (= l1 Nil) (is-Nil Nil) (= l3 l0)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(assert (= l2 Nil) )
(check-sat)