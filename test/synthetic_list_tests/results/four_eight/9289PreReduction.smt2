
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
(assert (and (is-Cons l2) (= l3 l2) (is-Cons Nil)) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l0 l3)) )
(assert (not (is-Nil l0)) )
(assert (= l3 Nil) )
(assert (= l3 l0) )
(assert (not (is-Nil Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l2 Nil) (= l1 Nil)) )
(assert (is-Cons l0) )
(check-sat)
