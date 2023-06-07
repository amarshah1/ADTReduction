
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
(assert (or (= l1 l0) (= l0 Nil) (is-Cons Nil)) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (or (is-Cons l3) (= l3 Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (is-Nil l3) )
(assert (and (is-Cons l1) (is-Cons Nil) (is-Nil Nil) (= l3 Nil)) )
(check-sat)