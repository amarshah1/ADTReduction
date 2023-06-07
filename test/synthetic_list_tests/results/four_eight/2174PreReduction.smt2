
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
(assert (is-Cons Nil) )
(assert (not (= l2 Nil)) )
(assert (and (= l0 l3) (is-Nil Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (not (is-Nil l3)) )
(assert (= l1 l1) )
(assert (and (is-Nil l1) (= l2 l2) (= l0 Nil) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
