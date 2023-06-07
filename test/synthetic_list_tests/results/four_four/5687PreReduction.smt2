
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
(assert (and (= l2 l3) (= l0 Nil) (= l3 l2)) )
(assert (and (= l1 Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l3 Nil) (= l0 l2)) )
(assert (is-Cons l3) )
(check-sat)
