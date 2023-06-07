
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
(assert (or (is-Cons l1) (= l1 l3) (= l3 Nil) (is-Cons Nil)) )
(assert (= l3 Nil) )
(assert (or (= l2 l2) (= l1 l1) (is-Nil Nil)) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l2 l2) (is-Nil l3)) )
(assert (is-Nil Nil) )
(assert (or (= l2 l1) (is-Cons Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (= l1 Nil) (= l3 Nil)) )
(check-sat)
