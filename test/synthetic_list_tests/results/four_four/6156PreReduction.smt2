
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
(assert (or (= l1 Nil) (= l2 Nil) (= l3 l2) (= l2 Nil)) )
(assert (or (= l0 Nil) (is-Cons Nil) (= l1 l2)) )
(assert (or (= l1 l1) (is-Nil Nil) (= l3 Nil) (= l0 Nil)) )
(check-sat)