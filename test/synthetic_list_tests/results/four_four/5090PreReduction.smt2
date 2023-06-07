
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
(assert (or (= l0 Nil) (= l2 l2) (is-Cons l0)) )
(assert (is-Cons l3) )
(assert (= l0 l2) )
(assert (or (= l1 Nil) (= l0 Nil) (= l0 l1) (is-Cons l3)) )
(check-sat)
