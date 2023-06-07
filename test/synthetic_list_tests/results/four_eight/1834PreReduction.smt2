
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
(assert (is-Cons l0) )
(assert (is-Cons l1) )
(assert (and (= l1 l2) (= l3 Nil) (= l2 l3)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (not (is-Cons Nil)) )
(assert (not (= l1 Nil)) )
(assert (= l3 Nil) )
(check-sat)
