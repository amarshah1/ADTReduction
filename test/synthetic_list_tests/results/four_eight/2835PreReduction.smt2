
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
(assert (not (= l3 l0)) )
(assert (not (= l0 l1)) )
(assert (or (= l0 Nil) (= l0 l2) (is-Nil Nil) (is-Nil Nil)) )
(assert (= l1 l1) )
(assert (or (= l0 Nil) (= l1 Nil) (is-Cons Nil) (= l0 l3)) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l3 l0)) )
(assert (not (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l1 Nil)) )
(check-sat)
