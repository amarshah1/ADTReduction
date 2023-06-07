
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
(assert (is-Nil l0) )
(assert (not (= l3 l3)) )
(assert (or (= l2 Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (not (is-Cons Nil)) )
(assert (and (= l0 Nil) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
