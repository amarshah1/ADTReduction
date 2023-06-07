
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
(assert (and (= l0 Nil) (= l1 Nil) (= l3 l1) (= l3 l2)) )
(assert (and (= l3 l2) (= l1 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (and (is-Cons l3) (= l0 l3)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (and (= l2 l0) (= l2 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (or (is-Nil l3) (= l2 Nil) (is-Nil Nil)) )
(assert (= l0 l3) )
(check-sat)
