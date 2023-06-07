
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
(assert (or (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l2 Nil) (is-Nil l0) (= l0 Nil) (= l2 Nil)) )
(assert (not (is-Cons l1)) )
(assert (is-Cons Nil) )
(assert (is-Cons l0) )
(assert (= l1 l2) )
(assert (is-Nil Nil) )
(check-sat)
