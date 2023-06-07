
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
(assert (not (= l3 l1)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (and (= l2 l0) (is-Nil Nil) (= l1 Nil) (= l1 Nil)) )
(assert (not (= l1 l0)) )
(assert (= l2 l2) )
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(check-sat)