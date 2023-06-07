
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
(assert (is-Cons l2) )
(assert (or (= l3 l1) (= l3 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil)) )
(assert (or (= l3 l2) (= l1 l0) (is-Cons Nil) (= l2 Nil)) )
(check-sat)
