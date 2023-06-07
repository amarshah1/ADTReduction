
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
(assert (not (= l3 Nil)) )
(assert (or (is-Nil Nil) (= l2 Nil)) )
(assert (= l3 l2) )
(assert (or (= l3 Nil) (= l3 l1) (is-Nil l0) (= l3 l2)) )
(assert (= l1 Nil) )
(assert (not (= l0 l3)) )
(assert (is-Cons Nil) )
(check-sat)