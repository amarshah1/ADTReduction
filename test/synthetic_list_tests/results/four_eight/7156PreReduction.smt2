
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
(assert (and (is-Nil Nil) (= l2 l0)) )
(assert (or (= l0 l0) (= l0 l0) (= l1 l0) (= l0 Nil)) )
(assert (and (= l0 l0) (is-Nil l0) (= l1 l2)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (not (= l3 l0)) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (is-Cons Nil)) )
(check-sat)
