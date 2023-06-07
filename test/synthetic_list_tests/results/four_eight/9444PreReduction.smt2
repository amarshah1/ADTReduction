
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
(assert (or (is-Nil Nil) (= l1 Nil) (= l1 Nil) (= l2 Nil)) )
(assert (or (= l3 l0) (= l1 l0) (= l3 l0) (= l1 Nil)) )
(assert (or (= l0 Nil) (is-Nil Nil) (= l1 Nil) (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(check-sat)
