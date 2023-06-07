
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
(assert (= l0 Nil) )
(assert (or (is-Nil l0) (is-Cons Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l0) )
(assert (and (is-Cons l3) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l3 l3) (= l1 Nil) (is-Nil Nil) (is-Nil l0)) )
(assert (= l2 Nil) )
(check-sat)
