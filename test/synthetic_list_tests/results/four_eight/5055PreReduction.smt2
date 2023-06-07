
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
(assert (is-Nil l1) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (or (= l0 l2) (is-Cons Nil)) )
(assert (is-Nil l2) )
(assert (= l2 l3) )
(assert (= l1 Nil) )
(assert (= l1 l3) )
(check-sat)