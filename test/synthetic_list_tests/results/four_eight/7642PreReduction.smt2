
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
(assert (is-Cons l3) )
(assert (or (is-Nil Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (and (= l0 Nil) (= l2 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (or (is-Nil l3) (is-Cons Nil) (= l3 Nil) (= l1 Nil)) )
(assert (is-Nil l0) )
(check-sat)
