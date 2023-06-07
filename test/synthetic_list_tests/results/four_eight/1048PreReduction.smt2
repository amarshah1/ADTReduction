
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
(assert (or (= l3 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (and (= l2 Nil) (is-Nil Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (and (is-Nil l2) (is-Cons Nil) (= l0 l2) (= l0 Nil)) )
(assert (is-Nil l1) )
(assert (is-Cons l3) )
(assert (= l0 l1) )
(assert (= l3 l0) )
(assert (or (is-Cons Nil) (= l3 l0) (= l0 Nil) (= l3 Nil)) )
(check-sat)
