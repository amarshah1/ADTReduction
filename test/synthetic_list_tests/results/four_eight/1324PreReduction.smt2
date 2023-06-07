
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
(assert (= l1 l1) )
(assert (is-Nil Nil) )
(assert (= l0 l1) )
(assert (= l3 l0) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l2 Nil) (= l2 Nil)) )
(assert (not (= l3 l0)) )
(assert (= l1 l0) )
(assert (is-Nil l3) )
(check-sat)