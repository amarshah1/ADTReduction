
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
(assert (not (= l2 l0)) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(assert (= l0 l3) )
(assert (or (= l3 l1) (= l3 l1) (= l2 Nil)) )
(assert (and (= l1 Nil) (= l3 l3)) )
(assert (is-Nil Nil) )
(check-sat)
