
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
(assert (not (= l3 l2)) )
(assert (or (= l1 Nil) (is-Cons l3) (= l2 l1) (= l2 Nil)) )
(assert (or (= l3 Nil) (= l0 Nil)) )
(assert (or (is-Nil l3) (is-Nil Nil) (= l2 Nil)) )
(check-sat)
