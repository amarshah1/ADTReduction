
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
(assert (= l1 Nil) )
(assert (or (= l1 Nil) (is-Cons l0) (= l2 l0)) )
(assert (is-Nil l0) )
(assert (= l2 Nil) )
(assert (and (is-Cons Nil) (= l3 l0) (is-Cons l2)) )
(assert (and (is-Nil Nil) (= l2 l3) (= l1 l2) (is-Nil Nil)) )
(assert (and (= l0 Nil) (= l2 Nil) (is-Nil l3) (is-Cons Nil)) )
(check-sat)
