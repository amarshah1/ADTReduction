
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
(assert (or (= l1 Nil) (= l0 l0) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l1 l1)) )
(assert (is-Nil l3) )
(assert (or (= l0 l0) (is-Cons l1) (= l0 Nil) (is-Nil Nil)) )
(assert (and (is-Nil l3) (= l0 Nil) (is-Nil Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (= l1 Nil) (is-Cons Nil) (= l2 Nil) (is-Cons Nil)) )
(check-sat)
