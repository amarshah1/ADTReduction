
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
(assert (not (is-Cons l0)) )
(assert (or (= l1 l3) (= l1 Nil) (= l0 Nil) (= l2 l1)) )
(assert (or (is-Nil l0) (is-Cons l1) (is-Nil Nil)) )
(assert (and (is-Cons Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (not (= l3 l3)) )
(assert (not (= l3 Nil)) )
(assert (or (= l0 Nil) (= l2 l1) (= l3 Nil) (= l2 Nil)) )
(assert (or (= l1 Nil) (= l0 l1) (= l1 l1)) )
(check-sat)
