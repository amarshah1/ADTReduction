
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
(assert (or (= l1 l2) (= l3 l0) (= l3 l0) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 l3) )
(assert (is-Cons l3) )
(assert (or (is-Nil l2) (is-Nil Nil)) )
(assert (not (is-Nil l0)) )
(assert (or (= l1 Nil) (= l1 l1) (= l0 l1)) )
(check-sat)
