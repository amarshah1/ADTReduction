
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
(assert (not (= l3 Nil)) )
(assert (and (is-Nil Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (or (= l2 Nil) (= l3 l1) (= l0 l3)) )
(assert (is-Nil Nil) )
(assert (not (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(check-sat)
