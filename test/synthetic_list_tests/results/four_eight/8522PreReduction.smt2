
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
(assert (and (is-Cons l2) (= l1 Nil) (= l2 l1) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (= l3 l2) )
(assert (or (is-Cons l0) (= l2 Nil)) )
(assert (and (= l3 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (or (= l3 Nil) (is-Nil l0) (is-Nil l0)) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l3 l1)) )
(check-sat)
