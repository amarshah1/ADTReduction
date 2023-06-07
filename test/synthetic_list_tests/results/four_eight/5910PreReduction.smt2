
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
(assert (or (is-Nil Nil) (= l2 Nil) (= l1 l1)) )
(assert (or (= l2 l0) (= l2 Nil) (= l0 l1) (= l0 l3)) )
(assert (or (is-Nil Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l2 l1)) )
(assert (is-Cons Nil) )
(assert (not (is-Cons Nil)) )
(assert (or (= l0 Nil) (= l2 Nil)) )
(check-sat)
