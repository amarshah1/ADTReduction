
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
(assert (= l1 Nil) )
(assert (or (= l2 Nil) (= l3 l1) (= l1 Nil) (is-Cons l1)) )
(assert (is-Cons l1) )
(assert (not (= l3 l3)) )
(assert (not (= l3 l2)) )
(assert (is-Nil Nil) )
(assert (or (= l3 l0) (= l1 l0) (is-Cons l3)) )
(assert (not (= l2 l3)) )
(check-sat)
