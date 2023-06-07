
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
(assert (and (= l2 Nil) (is-Cons Nil) (= l1 l0)) )
(assert (is-Nil Nil) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(assert (is-Nil l0) )
(assert (and (= l2 Nil) (= l3 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
