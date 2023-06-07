
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
(assert (or (is-Cons Nil) (= l3 Nil) (= l3 Nil) (= l3 Nil)) )
(assert (or (= l1 l2) (is-Cons l3)) )
(assert (and (= l1 Nil) (= l3 Nil)) )
(assert (or (= l1 l0) (= l1 l0) (= l3 Nil) (is-Nil l3)) )
(assert (not (is-Nil Nil)) )
(assert (and (= l3 l0) (= l3 Nil)) )
(assert (or (= l1 l2) (= l0 Nil)) )
(assert (or (= l0 Nil) (= l1 Nil)) )
(check-sat)
