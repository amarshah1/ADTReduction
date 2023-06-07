
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
(assert (not (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (= l0 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (= l0 Nil) )
(assert (and (= l3 Nil) (= l1 Nil) (is-Cons Nil)) )
(check-sat)
