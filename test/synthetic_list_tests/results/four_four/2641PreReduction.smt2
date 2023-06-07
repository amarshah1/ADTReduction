
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
(assert (or (is-Cons Nil) (= l1 l0)) )
(assert (is-Cons Nil) )
(assert (or (= l0 l2) (= l2 Nil) (= l1 Nil)) )
(assert (or (= l3 l1) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
