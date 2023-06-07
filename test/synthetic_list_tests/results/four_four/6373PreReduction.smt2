
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
(assert (and (is-Cons l1) (= l0 Nil)) )
(assert (or (= l0 l1) (is-Nil Nil) (= l0 l1)) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (is-Cons Nil)) )
(check-sat)
