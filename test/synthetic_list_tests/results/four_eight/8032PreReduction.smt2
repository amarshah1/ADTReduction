
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
(assert (is-Nil Nil) )
(assert (is-Nil l3) )
(assert (and (is-Cons Nil) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (and (= l2 Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l3 l3)) )
(assert (or (is-Nil Nil) (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
