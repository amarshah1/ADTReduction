
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
(assert (not (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l0 l3) (= l0 Nil)) )
(assert (or (= l3 l1) (= l1 l0)) )
(assert (= l2 Nil) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)
