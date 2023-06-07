
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
(assert (= l2 l1) )
(assert (or (= l0 Nil) (is-Nil Nil) (= l3 l2) (= l0 Nil)) )
(assert (or (= l2 l2) (= l1 l1) (is-Nil l1)) )
(assert (is-Cons Nil) )
(check-sat)