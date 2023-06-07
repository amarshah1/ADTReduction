
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
(assert (= l0 Nil) )
(assert (= l2 l0) )
(assert (or (= l0 Nil) (is-Nil Nil)) )
(assert (or (is-Cons Nil) (is-Cons Nil) (= l2 Nil) (is-Cons l1)) )
(check-sat)
