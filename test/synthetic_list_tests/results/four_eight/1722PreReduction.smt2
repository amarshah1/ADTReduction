
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
(assert (is-Nil l2) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (not (= l3 Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (and (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
