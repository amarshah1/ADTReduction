
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
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (= l3 Nil) )
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l3 Nil)) )
(assert (= l2 l3) )
(assert (or (= l0 l0) (= l1 Nil) (is-Nil Nil) (= l3 l3)) )
(check-sat)
