
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
(assert (= l1 l3) )
(assert (= l2 Nil) )
(assert (= l0 l0) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (and (= l3 l3) (= l1 l0)) )
(assert (= l1 Nil) )
(check-sat)
