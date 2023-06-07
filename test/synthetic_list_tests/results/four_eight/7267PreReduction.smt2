
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
(assert (= l1 Nil) )
(assert (and (= l1 l3) (= l0 Nil) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil l0) )
(assert (not (= l3 l3)) )
(assert (or (= l2 Nil) (= l0 Nil) (is-Cons l0)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(check-sat)