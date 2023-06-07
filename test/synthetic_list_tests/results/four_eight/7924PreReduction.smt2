
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
(assert (and (is-Nil Nil) (= l2 l0) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (= l2 l1) (= l2 l0)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l1 Nil) (= l2 l0) (is-Nil Nil)) )
(assert (= l1 l3) )
(assert (or (= l0 l1) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l2 l3) (= l3 Nil)) )
(check-sat)
