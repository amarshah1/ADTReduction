
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
(assert (= l0 Nil) )
(assert (is-Nil l0) )
(assert (= l0 Nil) )
(assert (and (is-Cons l0) (is-Nil l1)) )
(assert (is-Cons l0) )
(assert (and (= l0 Nil) (is-Nil Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (not (= l1 l3)) )
(check-sat)
