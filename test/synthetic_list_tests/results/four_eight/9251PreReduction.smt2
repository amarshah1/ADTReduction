
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
(assert (is-Nil l1) )
(assert (not (= l3 Nil)) )
(assert (= l3 l3) )
(assert (or (is-Nil Nil) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (not (= l3 l0)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil l0) (= l2 l0)) )
(check-sat)
