
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
(assert (or (= l1 Nil) (= l1 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (and (is-Nil l3) (is-Nil l0)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (= l2 Nil) )
(assert (is-Nil l3) )
(assert (and (is-Nil Nil) (= l1 Nil)) )
(check-sat)
