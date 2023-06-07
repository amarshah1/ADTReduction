
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
(assert (not (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l3 Nil) (= l3 Nil)) )
(assert (or (= l3 l1) (= l2 l0)) )
(assert (not (= l1 l0)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(check-sat)
