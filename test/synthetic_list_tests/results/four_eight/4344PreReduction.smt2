
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
(assert (or (= l2 l0) (is-Cons Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (= l0 l2) )
(assert (= l0 Nil) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l0 l3)) )
(assert (or (= l2 Nil) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(check-sat)
