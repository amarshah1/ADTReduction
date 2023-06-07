
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
(assert (and (= l2 l0) (= l3 Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (= l3 Nil)) )
(assert (and (= l3 l2) (= l3 Nil) (is-Nil Nil) (= l1 l0)) )
(assert (= l0 Nil) )
(assert (or (= l0 l2) (is-Nil l0) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil Nil) )
(check-sat)
