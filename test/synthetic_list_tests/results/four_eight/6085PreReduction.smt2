
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
(assert (not (= l3 Nil)) )
(assert (or (= l1 Nil) (= l2 l1)) )
(assert (is-Nil Nil) )
(assert (or (= l2 l2) (is-Cons Nil) (= l2 l3)) )
(assert (is-Nil Nil) )
(assert (= l2 l0) )
(assert (or (= l3 Nil) (= l3 l0) (= l1 Nil)) )
(assert (not (= l3 l1)) )
(check-sat)
