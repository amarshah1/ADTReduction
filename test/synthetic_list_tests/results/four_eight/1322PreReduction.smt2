
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
(assert (or (= l2 l3) (= l1 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (is-Cons l0) )
(assert (= l0 Nil) )
(assert (or (= l1 l0) (= l3 l3)) )
(assert (and (is-Cons l3) (is-Cons l1)) )
(assert (or (is-Nil Nil) (= l1 l0) (= l0 l0)) )
(check-sat)
