
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
(assert (not (= l3 Nil)) )
(assert (and (= l1 Nil) (= l0 l1)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l2 l0) (is-Cons l3)) )
(assert (is-Nil Nil) )
(assert (or (= l2 l0) (is-Cons Nil) (= l2 Nil) (= l2 l0)) )
(assert (is-Cons l3) )
(assert (or (= l0 Nil) (is-Nil l1)) )
(check-sat)
