
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
(assert (or (= l0 l2) (= l2 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(assert (is-Cons l0) )
(assert (is-Nil Nil) )
(assert (not (= l0 l3)) )
(assert (is-Nil Nil) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l3 Nil)) )
(check-sat)
