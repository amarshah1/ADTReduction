
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
(assert (or (is-Cons Nil) (= l0 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (or (= l1 l2) (= l0 Nil) (= l2 l0)) )
(assert (and (= l1 l3) (= l3 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l3 l2) (= l1 Nil)) )
(assert (is-Nil l0) )
(check-sat)
