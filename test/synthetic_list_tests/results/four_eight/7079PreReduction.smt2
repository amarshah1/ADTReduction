
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
(assert (and (= l1 Nil) (is-Nil l0) (= l0 Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (is-Cons l0) (= l2 Nil) (is-Nil Nil)) )
(assert (and (is-Cons l1) (= l0 Nil)) )
(assert (and (= l3 l1) (= l1 l2)) )
(assert (or (is-Nil Nil) (= l0 Nil) (= l0 l0) (is-Cons l1)) )
(assert (not (= l0 Nil)) )
(check-sat)
