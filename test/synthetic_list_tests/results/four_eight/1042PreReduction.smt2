
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
(assert (not (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Nil Nil)) )
(assert (and (= l0 l1) (= l1 Nil) (is-Nil Nil)) )
(assert (and (is-Nil l0) (= l3 l2)) )
(assert (is-Nil l1) )
(assert (not (= l3 Nil)) )
(assert (not (= l0 l0)) )
(check-sat)
