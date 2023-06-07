
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
(assert (is-Nil l1) )
(assert (or (= l1 l1) (is-Nil l3) (is-Nil l2) (= l3 Nil)) )
(assert (and (= l3 Nil) (= l0 l0) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(assert (not (is-Cons l0)) )
(assert (not (= l3 l3)) )
(assert (is-Cons Nil) )
(check-sat)