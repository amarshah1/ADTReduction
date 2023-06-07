
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
(assert (and (= l0 l0) (= l1 Nil)) )
(assert (or (is-Nil Nil) (= l3 l2) (= l1 l3) (= l1 l3)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (= l1 l1) (= l3 l2) (= l1 Nil)) )
(assert (= l3 Nil) )
(assert (or (= l1 Nil) (= l3 Nil)) )
(check-sat)
