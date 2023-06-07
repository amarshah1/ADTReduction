
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
(assert (not (= l2 l1)) )
(assert (= l2 Nil) )
(assert (and (= l0 Nil) (= l1 l3) (= l3 l0)) )
(assert (and (= l1 Nil) (is-Nil Nil) (is-Cons l3)) )
(check-sat)
