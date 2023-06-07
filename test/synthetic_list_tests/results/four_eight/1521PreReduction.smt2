
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
(assert (not (= l3 l2)) )
(assert (and (is-Nil l2) (= l0 Nil) (is-Nil l2)) )
(assert (not (= l0 l3)) )
(assert (and (= l0 l0) (is-Nil Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (is-Cons l0) (is-Nil Nil) (is-Cons Nil)) )
(assert (or (= l3 Nil) (= l2 Nil) (= l1 Nil) (= l0 l1)) )
(assert (is-Cons Nil) )
(check-sat)
