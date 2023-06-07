
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
(assert (and (is-Cons l2) (= l2 l3) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l0 l0) (is-Nil Nil) (= l0 l3)) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (not (= l3 Nil)) )
(assert (= l3 Nil) )
(check-sat)
