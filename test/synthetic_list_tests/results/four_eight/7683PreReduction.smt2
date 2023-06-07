
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
(assert (= l0 l1) )
(assert (not (= l1 Nil)) )
(assert (= l2 Nil) )
(assert (and (is-Nil Nil) (= l0 Nil)) )
(assert (is-Nil l3) )
(assert (= l2 Nil) )
(assert (= l3 Nil) )
(check-sat)
