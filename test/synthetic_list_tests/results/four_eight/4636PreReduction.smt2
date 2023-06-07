
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
(assert (not (= l0 l2)) )
(assert (and (= l0 Nil) (is-Cons l0) (is-Nil Nil) (= l1 l1)) )
(assert (or (= l0 l1) (is-Nil Nil) (= l2 Nil) (= l2 l0)) )
(assert (= l0 l0) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (= l1 Nil) (= l3 l3)) )
(assert (= l1 l1) )
(check-sat)
