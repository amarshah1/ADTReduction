
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
(assert (is-Nil l2) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l1 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 l2) )
(assert (not (is-Cons Nil)) )
(check-sat)
