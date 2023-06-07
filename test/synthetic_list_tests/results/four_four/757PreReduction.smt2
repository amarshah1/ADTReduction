
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
(assert (or (is-Nil Nil) (is-Nil Nil) (= l3 l3)) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (is-Cons l1)) )
(assert (and (= l0 l1) (= l3 Nil)) )
(check-sat)
