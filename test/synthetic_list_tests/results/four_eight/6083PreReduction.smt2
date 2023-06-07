
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
(assert (and (is-Nil Nil) (= l1 Nil) (= l0 Nil)) )
(assert (and (= l1 l1) (is-Nil Nil) (is-Nil Nil)) )
(assert (not (is-Nil Nil)) )
(assert (and (is-Nil l1) (= l1 l3) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (= l1 l1) )
(assert (is-Nil Nil) )
(check-sat)
