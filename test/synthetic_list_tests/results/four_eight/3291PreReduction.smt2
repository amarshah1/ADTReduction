
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
(assert (is-Nil Nil) )
(assert (or (= l1 l2) (= l2 Nil)) )
(assert (= l1 Nil) )
(assert (or (is-Cons l1) (= l1 Nil) (is-Nil l0)) )
(assert (is-Nil Nil) )
(assert (is-Cons l0) )
(assert (and (= l0 l1) (= l1 l3) (= l3 l1) (is-Cons l0)) )
(check-sat)
