
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
(assert (not (= l3 l3)) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l0 l0) (= l1 l0)) )
(assert (= l2 Nil) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (not (= l2 l0)) )
(assert (not (= l2 Nil)) )
(assert (= l0 Nil) )
(check-sat)
