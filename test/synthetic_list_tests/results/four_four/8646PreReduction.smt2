
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
(assert (or (is-Nil l1) (is-Cons Nil) (= l3 l2) (is-Nil Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (not (is-Cons Nil)) )
(check-sat)
