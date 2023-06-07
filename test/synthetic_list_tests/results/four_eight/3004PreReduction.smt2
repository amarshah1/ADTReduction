
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
(assert (or (= l2 Nil) (= l2 l0) (= l1 Nil) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (= l1 Nil) (= l3 l3) (= l2 l0)) )
(assert (= l0 l1) )
(assert (not (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (and (= l0 l2) (= l3 Nil) (= l3 l1) (is-Nil Nil)) )
(assert (= l3 Nil) )
(assert (= l3 l2) )
(check-sat)