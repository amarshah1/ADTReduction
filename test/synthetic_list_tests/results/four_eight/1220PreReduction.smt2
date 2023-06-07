
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
(assert (= l1 Nil) )
(assert (or (= l2 l2) (= l2 Nil) (is-Nil l0)) )
(assert (and (is-Cons Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l0 l0) (is-Cons Nil) (= l0 Nil) (= l3 l2)) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(check-sat)
