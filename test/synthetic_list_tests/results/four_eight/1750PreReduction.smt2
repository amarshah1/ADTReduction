
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
(assert (or (is-Cons Nil) (= l3 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (= l0 Nil) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (= l1 Nil) (= l2 l1) (= l0 l3)) )
(check-sat)
