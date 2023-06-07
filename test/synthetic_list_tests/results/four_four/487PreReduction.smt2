
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
(assert (or (= l2 l0) (is-Nil Nil) (is-Cons l0)) )
(assert (and (= l0 Nil) (= l1 Nil) (= l2 Nil)) )
(assert (= l1 l1) )
(assert (and (= l0 l3) (= l3 Nil)) )
(check-sat)
