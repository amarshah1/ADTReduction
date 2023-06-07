
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
(assert (is-Cons Nil) )
(assert (is-Cons l1) )
(assert (or (= l1 l0) (is-Nil Nil) (= l1 Nil) (= l1 Nil)) )
(assert (and (is-Cons Nil) (= l1 l0) (is-Nil l2)) )
(assert (= l2 Nil) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l3 Nil)) )
(check-sat)
