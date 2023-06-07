
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
(assert (or (is-Nil Nil) (= l0 l1) (is-Cons l3) (= l2 Nil)) )
(assert (or (= l1 Nil) (= l3 l3) (= l3 Nil)) )
(assert (= l0 Nil) )
(assert (is-Cons l2) )
(check-sat)
