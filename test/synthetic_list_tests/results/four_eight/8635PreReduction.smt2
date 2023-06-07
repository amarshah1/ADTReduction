
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
(assert (is-Nil l1) )
(assert (and (= l3 Nil) (= l3 Nil) (= l0 Nil)) )
(assert (and (is-Cons Nil) (= l2 l1) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l2 l0) (is-Nil Nil) (is-Cons l3) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l1 l2) (= l3 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(check-sat)