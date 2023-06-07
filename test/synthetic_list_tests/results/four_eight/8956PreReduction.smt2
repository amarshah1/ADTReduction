
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
(assert (= l0 Nil) )
(assert (and (= l1 l2) (is-Nil l1)) )
(assert (not (= l2 l0)) )
(assert (is-Cons Nil) )
(assert (and (= l3 l1) (is-Nil Nil) (is-Cons l0) (is-Nil l3)) )
(assert (or (is-Cons Nil) (is-Cons l2) (= l0 Nil)) )
(assert (and (= l0 Nil) (is-Cons Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)
