
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
(assert (and (= l1 l2) (= l0 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (= l2 Nil) )
(assert (and (is-Nil Nil) (= l0 Nil) (is-Nil l0)) )
(assert (not (is-Nil Nil)) )
(assert (or (= l2 Nil) (= l1 Nil)) )
(assert (or (= l2 Nil) (is-Cons Nil) (= l2 l3)) )
(assert (and (= l2 Nil) (= l0 l1) (= l0 l1)) )
(check-sat)
