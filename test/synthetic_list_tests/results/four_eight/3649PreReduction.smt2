
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
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (not (= l2 Nil)) )
(assert (or (is-Nil Nil) (is-Cons l3) (is-Nil Nil) (is-Nil l0)) )
(assert (not (is-Cons Nil)) )
(assert (and (= l3 l0) (= l0 Nil) (= l3 l3)) )
(assert (is-Nil l2) )
(assert (not (= l2 Nil)) )
(check-sat)
