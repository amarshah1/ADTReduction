
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
(assert (and (is-Cons l1) (= l0 l3)) )
(assert (and (= l2 Nil) (= l1 l1) (= l0 Nil) (is-Nil l0)) )
(assert (is-Nil l0) )
(assert (not (is-Nil Nil)) )
(assert (and (is-Cons Nil) (is-Nil Nil)) )
(assert (not (= l0 l1)) )
(assert (= l0 Nil) )
(assert (and (= l3 Nil) (is-Cons l0) (= l3 Nil)) )
(check-sat)
