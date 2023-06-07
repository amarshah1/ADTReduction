
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
(assert (not (= l1 Nil)) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil l1) )
(assert (or (= l2 Nil) (= l1 l3)) )
(assert (not (is-Nil Nil)) )
(assert (= l0 Nil) )
(assert (not (= l3 l0)) )
(check-sat)
