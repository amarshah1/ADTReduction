
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
(assert (not (= l1 Nil)) )
(assert (not (= l3 Nil)) )
(assert (= l3 Nil) )
(assert (= l1 Nil) )
(assert (and (= l2 l0) (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l0 l2) (= l1 l0) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
