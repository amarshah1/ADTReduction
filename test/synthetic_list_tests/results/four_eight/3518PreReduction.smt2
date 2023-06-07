
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
(assert (not (= l0 l0)) )
(assert (and (= l0 Nil) (is-Cons Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (is-Nil Nil) (= l0 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l1 Nil) (= l1 l3)) )
(assert (or (= l2 l0) (= l1 Nil)) )
(assert (and (is-Nil Nil) (= l3 l0) (= l1 Nil)) )
(assert (or (is-Nil Nil) (= l0 Nil) (= l1 l3) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(check-sat)
