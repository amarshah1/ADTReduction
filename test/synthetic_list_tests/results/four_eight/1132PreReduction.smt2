
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
(assert (not (= l2 l3)) )
(assert (or (is-Nil Nil) (is-Cons l0) (= l3 l3) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l0 l0) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (= l3 l2) )
(assert (is-Nil Nil) )
(check-sat)
