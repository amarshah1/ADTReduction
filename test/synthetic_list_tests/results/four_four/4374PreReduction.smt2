
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
(assert (and (= l3 l3) (= l2 Nil) (= l3 l3)) )
(assert (or (= l1 l2) (= l3 Nil) (= l0 l0) (= l2 Nil)) )
(assert (or (= l1 l1) (= l1 Nil) (= l0 Nil)) )
(assert (and (= l0 l0) (= l0 Nil) (is-Cons l2) (= l1 Nil)) )
(check-sat)
