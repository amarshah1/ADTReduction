
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
(assert (and (is-Cons l3) (= l1 Nil) (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (and (= l0 Nil) (= l3 l1) (= l2 l1) (is-Cons l3)) )
(assert (is-Cons l3) )
(check-sat)
