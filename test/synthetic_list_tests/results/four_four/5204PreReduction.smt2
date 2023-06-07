
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
(assert (= l3 l3) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l0 Nil) (= l2 l0) (= l0 l2)) )
(check-sat)
