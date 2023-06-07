
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
(assert (and (is-Cons Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 l0) )
(assert (and (= l0 Nil) (= l2 Nil) (= l2 l0) (is-Nil Nil)) )
(assert (= l2 l2) )
(assert (or (= l0 Nil) (= l3 l0) (is-Cons Nil) (= l3 l1)) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (= l1 Nil) )
(check-sat)
