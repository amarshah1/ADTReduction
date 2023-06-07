
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
(assert (or (is-Cons Nil) (= l3 Nil) (is-Cons l0) (is-Nil Nil)) )
(assert (or (= l1 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (or (is-Nil Nil) (= l3 Nil)) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(check-sat)
