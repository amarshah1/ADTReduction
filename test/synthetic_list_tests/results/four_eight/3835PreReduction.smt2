
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
(assert (= l3 l2) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (not (= l1 Nil)) )
(assert (not (is-Nil l3)) )
(assert (not (is-Nil Nil)) )
(check-sat)
