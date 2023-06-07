
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
(assert (or (= l1 l2) (= l2 l3) (= l1 Nil)) )
(assert (or (is-Cons l3) (= l1 Nil) (is-Nil Nil)) )
(assert (or (= l3 Nil) (is-Cons l3) (= l1 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
