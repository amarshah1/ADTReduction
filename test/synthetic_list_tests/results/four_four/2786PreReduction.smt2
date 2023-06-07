
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
(assert (= l1 l3) )
(assert (and (= l1 Nil) (= l2 Nil)) )
(assert (and (is-Cons l2) (= l1 l1) (= l2 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
