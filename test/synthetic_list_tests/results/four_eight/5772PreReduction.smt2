
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
(assert (or (is-Nil Nil) (= l3 l3) (is-Nil l3) (is-Nil Nil)) )
(assert (or (= l2 l0) (is-Cons l2)) )
(assert (or (= l1 l3) (is-Cons Nil) (= l2 l2) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (is-Cons l3) )
(assert (or (is-Cons Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (or (= l2 Nil) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
