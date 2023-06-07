
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
(assert (= l0 Nil) )
(assert (or (= l1 l1) (is-Cons l1) (= l1 Nil) (= l3 Nil)) )
(assert (and (is-Nil Nil) (= l2 l1)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l3 l3) (= l1 Nil) (is-Nil Nil)) )
(assert (and (= l1 l0) (is-Cons Nil) (= l2 l0) (is-Nil l0)) )
(assert (is-Nil l1) )
(assert (or (is-Cons Nil) (= l1 l2) (= l0 Nil) (= l3 Nil)) )
(check-sat)
