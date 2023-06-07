
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
(assert (is-Nil l3) )
(assert (is-Cons l3) )
(assert (and (= l3 l0) (= l0 Nil) (is-Nil l0) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (= l2 Nil)) )
(assert (or (= l3 l1) (= l1 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l0) )
(check-sat)
