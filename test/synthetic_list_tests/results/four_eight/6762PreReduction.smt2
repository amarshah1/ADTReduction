
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
(assert (and (= l3 l3) (= l1 Nil)) )
(assert (is-Cons l3) )
(assert (is-Cons l2) )
(assert (is-Nil l1) )
(assert (is-Cons l3) )
(assert (or (= l3 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l3 l0) (= l0 Nil) (is-Nil Nil) (= l0 Nil)) )
(check-sat)
