
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
(assert (= l0 Nil) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (is-Cons Nil) (is-Nil l0) (= l1 Nil)) )
(assert (or (is-Cons Nil) (= l0 Nil)) )
(assert (or (= l3 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (is-Nil l2)) )
(check-sat)