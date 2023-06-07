
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
(assert (or (= l1 Nil) (is-Cons l1) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l2 l0) (is-Nil Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (is-Cons l3) )
(check-sat)
