
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
(assert (not (= l1 Nil)) )
(assert (is-Nil l1) )
(assert (not (= l3 l3)) )
(assert (= l2 Nil) )
(assert (or (= l3 Nil) (= l0 l0) (is-Nil Nil)) )
(assert (or (= l3 l1) (= l0 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 l3) )
(check-sat)
