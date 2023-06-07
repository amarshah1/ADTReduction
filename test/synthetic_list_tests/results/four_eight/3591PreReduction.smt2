
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
(assert (or (= l0 l2) (= l3 Nil)) )
(assert (= l1 Nil) )
(assert (or (= l1 l1) (= l0 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l0 l2)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (is-Nil l3) (= l0 l2)) )
(assert (and (= l3 Nil) (= l2 Nil) (is-Cons l1) (is-Nil Nil)) )
(assert (or (= l0 l3) (= l3 Nil)) )
(check-sat)
