
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
(assert (not (= l2 l0)) )
(assert (not (= l0 Nil)) )
(assert (and (= l3 Nil) (= l2 l2) (is-Nil Nil) (= l2 Nil)) )
(assert (not (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (= l0 l2)) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (is-Nil Nil) (= l3 l0) (is-Cons Nil)) )
(check-sat)
