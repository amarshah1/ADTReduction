
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
(assert (is-Cons Nil) )
(assert (not (is-Nil Nil)) )
(assert (and (= l0 Nil) (= l1 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (is-Nil l1) )
(assert (and (is-Nil l0) (is-Cons l0) (= l1 Nil) (= l3 Nil)) )
(assert (is-Nil l1) )
(assert (not (= l3 Nil)) )
(check-sat)
