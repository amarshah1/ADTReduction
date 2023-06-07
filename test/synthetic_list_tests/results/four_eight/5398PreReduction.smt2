
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
(assert (or (= l3 l0) (is-Nil Nil) (= l1 l0) (= l2 l1)) )
(assert (and (= l1 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (or (= l1 Nil) (is-Nil Nil) (is-Nil l0)) )
(assert (or (= l3 l2) (= l2 Nil)) )
(check-sat)
