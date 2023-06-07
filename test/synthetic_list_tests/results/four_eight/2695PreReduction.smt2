
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
(assert (and (= l2 Nil) (= l1 l3)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (= l2 Nil)) )
(assert (= l1 l2) )
(assert (or (= l0 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(check-sat)
