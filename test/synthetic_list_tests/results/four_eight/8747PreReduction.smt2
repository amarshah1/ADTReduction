
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
(assert (= l2 Nil) )
(assert (not (is-Nil Nil)) )
(assert (and (= l0 Nil) (= l0 Nil)) )
(assert (or (= l0 l2) (= l0 l3) (= l1 Nil)) )
(assert (is-Cons l1) )
(assert (or (= l2 l0) (is-Cons Nil)) )
(assert (= l0 l2) )
(assert (= l0 l3) )
(check-sat)