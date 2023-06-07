
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
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (= l0 Nil) (= l2 Nil) (is-Cons l1)) )
(assert (not (= l2 l3)) )
(assert (= l2 Nil) )
(assert (not (= l3 Nil)) )
(assert (or (= l0 Nil) (= l0 l3) (= l0 l0) (is-Nil Nil)) )
(assert (or (is-Cons Nil) (= l2 Nil)) )
(check-sat)
