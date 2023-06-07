
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
(assert (or (= l1 Nil) (is-Nil l0)) )
(assert (and (= l1 Nil) (is-Cons l0) (= l1 l0)) )
(assert (is-Cons Nil) )
(assert (not (= l1 Nil)) )
(assert (and (= l1 l0) (= l3 Nil) (= l3 l2)) )
(assert (or (is-Nil Nil) (= l1 l0) (is-Nil Nil)) )
(assert (or (is-Cons l1) (= l3 Nil)) )
(check-sat)
