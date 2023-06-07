
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
(assert (and (= l3 l2) (= l0 Nil) (= l0 Nil) (= l3 l1)) )
(assert (and (is-Cons l2) (is-Nil Nil)) )
(assert (is-Cons l1) )
(assert (not (= l3 l3)) )
(assert (= l3 Nil) )
(assert (= l3 Nil) )
(assert (and (= l2 l1) (is-Cons l0)) )
(assert (= l0 Nil) )
(check-sat)
