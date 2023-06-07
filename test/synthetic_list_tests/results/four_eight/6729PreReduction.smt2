
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
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Nil l1) (= l0 Nil)) )
(assert (or (= l0 Nil) (= l0 l1) (= l1 l0)) )
(assert (= l0 Nil) )
(assert (= l2 l0) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (= l3 l2) )
(check-sat)
