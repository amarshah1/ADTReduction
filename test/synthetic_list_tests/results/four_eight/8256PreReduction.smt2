
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
(assert (= l3 l0) )
(assert (is-Cons l3) )
(assert (and (is-Nil l2) (is-Cons l0) (= l1 Nil) (is-Cons Nil)) )
(assert (or (is-Cons Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l0 Nil)) )
(check-sat)
