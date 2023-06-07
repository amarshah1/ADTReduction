
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
(assert (or (= l3 Nil) (= l3 l1)) )
(assert (or (= l3 l0) (is-Cons l1) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (= l1 Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(check-sat)
