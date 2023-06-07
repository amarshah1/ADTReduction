
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
(assert (not (= l1 Nil)) )
(assert (= l0 l1) )
(assert (= l0 l3) )
(assert (and (= l2 Nil) (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (= l2 Nil) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(check-sat)