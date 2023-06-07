
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
(assert (= l0 Nil) )
(assert (or (= l1 l0) (is-Cons Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 l0) )
(assert (= l1 Nil) )
(assert (and (= l1 Nil) (= l3 Nil) (is-Nil Nil) (is-Cons l3)) )
(assert (= l0 Nil) )
(check-sat)
