
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
(assert (and (= l3 Nil) (= l2 l1) (= l1 Nil) (= l3 Nil)) )
(assert (or (= l2 Nil) (= l1 Nil) (= l2 l2) (is-Cons l3)) )
(assert (and (is-Cons l1) (= l1 l3) (= l0 Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)
