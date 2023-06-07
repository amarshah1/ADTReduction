
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
(assert (is-Cons l2) )
(assert (not (= l1 Nil)) )
(assert (is-Cons l3) )
(assert (not (= l3 Nil)) )
(assert (= l1 l0) )
(assert (or (= l1 l1) (= l1 l1) (= l3 Nil)) )
(assert (not (= l1 Nil)) )
(check-sat)
