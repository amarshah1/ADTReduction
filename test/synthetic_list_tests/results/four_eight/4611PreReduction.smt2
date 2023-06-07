
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
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l1 l3)) )
(assert (is-Nil Nil) )
(assert (not (= l0 l0)) )
(assert (is-Cons Nil) )
(assert (not (= l3 l0)) )
(assert (not (= l0 l1)) )
(assert (= l0 Nil) )
(check-sat)