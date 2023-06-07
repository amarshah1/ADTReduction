
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
(assert (not (= l2 Nil)) )
(assert (and (= l1 l3) (is-Nil Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (or (is-Nil l2) (is-Cons Nil)) )
(assert (and (is-Nil Nil) (= l2 l1) (= l2 Nil)) )
(assert (or (is-Nil Nil) (is-Cons l3)) )
(assert (or (= l2 l2) (= l0 Nil)) )
(assert (or (is-Cons l3) (is-Nil Nil)) )
(assert (= l1 Nil) )
(check-sat)
