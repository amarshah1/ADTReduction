
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
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l0 Nil) (= l1 Nil)) )
(assert (not (= l0 Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (= l3 Nil) (is-Nil l2) (is-Cons Nil) (= l3 Nil)) )
(assert (or (= l2 Nil) (= l0 Nil) (= l2 Nil) (is-Nil l0)) )
(assert (and (= l2 Nil) (is-Cons l0) (= l2 l0) (is-Nil Nil)) )
(assert (not (= l0 Nil)) )
(check-sat)
