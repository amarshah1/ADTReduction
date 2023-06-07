
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
(assert (and (= l1 Nil) (= l0 Nil) (= l1 Nil)) )
(assert (and (= l3 l1) (= l0 l0) (is-Cons Nil) (= l1 l3)) )
(assert (not (= l3 Nil)) )
(check-sat)
