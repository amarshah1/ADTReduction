
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
(assert (or (is-Cons l2) (= l0 l3) (= l0 Nil) (= l3 Nil)) )
(assert (or (is-Nil l3) (= l0 Nil) (= l0 l0) (is-Nil Nil)) )
(assert (or (= l3 l3) (= l1 Nil)) )
(assert (and (= l0 Nil) (= l0 l2) (= l2 Nil) (= l3 Nil)) )
(check-sat)
