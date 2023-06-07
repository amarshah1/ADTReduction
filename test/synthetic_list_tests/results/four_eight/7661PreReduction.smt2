
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
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l3 Nil) (= l2 l2)) )
(assert (is-Nil Nil) )
(assert (= l2 l0) )
(assert (and (= l0 Nil) (= l2 Nil)) )
(assert (not (= l1 l2)) )
(assert (not (is-Nil Nil)) )
(check-sat)
