
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
(assert (and (= l2 Nil) (= l3 l0)) )
(assert (or (= l0 l0) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (= l0 Nil) (is-Nil l2) (= l0 l2)) )
(assert (or (is-Nil l0) (= l2 l3)) )
(check-sat)
