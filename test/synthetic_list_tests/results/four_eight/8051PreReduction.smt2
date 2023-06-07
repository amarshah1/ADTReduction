
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
(assert (and (is-Nil Nil) (is-Cons Nil) (= l2 l3)) )
(assert (or (is-Cons l2) (is-Nil l0) (= l2 Nil) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (and (= l1 Nil) (is-Cons l0) (is-Nil l0)) )
(assert (is-Nil l3) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (not (= l0 l1)) )
(assert (or (= l0 Nil) (= l3 l2) (is-Cons Nil) (= l0 Nil)) )
(check-sat)
