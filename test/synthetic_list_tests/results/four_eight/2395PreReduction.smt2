
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
(assert (and (is-Nil Nil) (= l3 Nil)) )
(assert (and (= l1 Nil) (= l2 l3)) )
(assert (is-Cons l1) )
(assert (= l0 Nil) )
(assert (or (is-Nil Nil) (is-Nil l1) (is-Nil Nil) (= l3 Nil)) )
(assert (is-Nil l1) )
(assert (or (= l1 l1) (is-Cons Nil) (is-Cons l2) (is-Nil l3)) )
(check-sat)
