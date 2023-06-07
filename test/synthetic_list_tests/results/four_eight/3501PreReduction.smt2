
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
(assert (not (is-Cons Nil)) )
(assert (and (= l0 Nil) (= l3 Nil) (= l1 Nil) (is-Nil l1)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (is-Nil l0) )
(assert (is-Nil l2) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(check-sat)
