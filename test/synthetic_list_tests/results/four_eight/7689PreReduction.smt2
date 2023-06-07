
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
(assert (not (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l3 l1) (is-Cons Nil)) )
(assert (is-Nil l1) )
(assert (is-Cons l0) )
(assert (= l3 Nil) )
(assert (= l0 Nil) )
(check-sat)