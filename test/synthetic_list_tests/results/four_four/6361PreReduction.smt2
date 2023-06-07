
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
(assert (or (is-Cons l1) (= l0 l3) (is-Cons Nil)) )
(assert (or (= l3 Nil) (is-Nil Nil)) )
(assert (not (= l2 l3)) )
(assert (not (= l0 Nil)) )
(check-sat)
