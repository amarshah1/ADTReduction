
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
(assert (or (= l2 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Cons l2) (is-Nil Nil) (= l0 l0)) )
(assert (or (= l3 l1) (= l1 l2) (is-Cons Nil) (is-Nil Nil)) )
(check-sat)
