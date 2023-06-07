
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
(assert (or (= l1 Nil) (= l1 Nil)) )
(assert (or (= l0 Nil) (is-Cons l3) (= l3 Nil) (= l0 Nil)) )
(assert (is-Cons l0) )
(assert (is-Nil Nil) )
(assert (= l2 l0) )
(assert (not (= l2 l2)) )
(assert (= l2 Nil) )
(assert (or (= l3 Nil) (is-Nil l0) (is-Nil Nil) (is-Cons l2)) )
(check-sat)
