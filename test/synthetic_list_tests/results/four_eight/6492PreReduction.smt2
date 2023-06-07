
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
(assert (= l1 l3) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(assert (= l2 Nil) )
(assert (is-Cons l1) )
(assert (or (= l1 Nil) (= l2 Nil)) )
(assert (or (= l0 Nil) (is-Cons l2) (= l0 l3) (= l3 Nil)) )
(check-sat)
