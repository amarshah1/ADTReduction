
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
(assert (is-Cons l2) )
(assert (= l0 l1) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (and (= l2 l0) (is-Cons Nil) (= l0 Nil)) )
(assert (and (= l3 Nil) (is-Nil l0) (is-Nil Nil) (is-Cons l1)) )
(assert (is-Cons Nil) )
(check-sat)
