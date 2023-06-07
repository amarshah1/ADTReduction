
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
(assert (= l2 l3) )
(assert (and (= l0 l0) (= l1 Nil) (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l1 l1)) )
(assert (and (is-Nil Nil) (= l3 l1)) )
(assert (and (= l1 Nil) (is-Nil Nil)) )
(assert (not (= l2 Nil)) )
(check-sat)