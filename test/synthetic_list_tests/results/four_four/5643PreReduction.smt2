
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
(assert (= l1 l2) )
(assert (is-Cons Nil) )
(assert (and (= l1 l1) (= l0 Nil) (is-Nil Nil)) )
(assert (and (= l3 Nil) (= l2 l0) (= l3 l3) (is-Cons Nil)) )
(check-sat)
