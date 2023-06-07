
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
(assert (= l2 l0) )
(assert (not (is-Cons l0)) )
(assert (is-Nil l2) )
(assert (or (= l0 l3) (= l2 l0) (is-Cons Nil)) )
(assert (is-Nil l3) )
(assert (is-Cons Nil) )
(assert (= l1 l3) )
(check-sat)