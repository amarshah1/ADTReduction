
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
(assert (and (is-Cons l0) (is-Cons Nil) (is-Nil Nil)) )
(assert (or (= l0 l0) (is-Cons l3) (is-Nil Nil)) )
(assert (and (= l1 l3) (is-Nil l2) (= l2 Nil)) )
(assert (or (= l3 Nil) (= l1 Nil) (= l3 l1) (is-Cons Nil)) )
(check-sat)
