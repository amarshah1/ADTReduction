
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
(assert (and (= l2 Nil) (= l3 Nil)) )
(assert (or (= l3 Nil) (= l1 l2) (= l0 Nil) (is-Nil l3)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (is-Nil Nil) (= l2 l3)) )
(assert (and (= l2 l1) (is-Cons l3) (is-Nil l0) (is-Nil l3)) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l3 l3)) )
(check-sat)
