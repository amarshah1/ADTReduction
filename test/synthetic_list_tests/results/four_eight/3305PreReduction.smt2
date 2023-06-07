
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
(assert (is-Cons l1) )
(assert (= l2 Nil) )
(assert (is-Cons l3) )
(assert (is-Nil l0) )
(assert (= l2 l3) )
(assert (or (= l3 l3) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(check-sat)
