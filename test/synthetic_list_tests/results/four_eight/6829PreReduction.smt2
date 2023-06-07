
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
(assert (= l3 l1) )
(assert (and (is-Cons l2) (is-Cons Nil) (= l2 Nil)) )
(assert (or (= l3 Nil) (= l2 l1) (= l0 Nil) (= l1 Nil)) )
(assert (= l1 l1) )
(assert (or (is-Nil Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Cons l0) )
(assert (and (is-Cons Nil) (is-Nil l3) (is-Cons Nil)) )
(assert (is-Cons l3) )
(check-sat)
