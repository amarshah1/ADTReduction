
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
(assert (and (is-Cons Nil) (is-Cons Nil) (= l2 l3)) )
(assert (is-Cons Nil) )
(assert (is-Cons l0) )
(assert (or (= l2 Nil) (is-Cons Nil) (is-Nil l0)) )
(assert (= l0 Nil) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(check-sat)