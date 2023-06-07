
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
(assert (is-Nil Nil) )
(assert (or (= l3 Nil) (is-Nil l3)) )
(assert (= l1 Nil) )
(assert (= l1 Nil) )
(assert (or (= l3 l0) (= l2 l0) (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (is-Cons l0) )
(assert (is-Cons Nil) )
(check-sat)