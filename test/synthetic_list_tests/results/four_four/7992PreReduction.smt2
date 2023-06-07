
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
(assert (or (is-Cons l3) (is-Nil Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (is-Cons l0) )
(assert (is-Cons l1) )
(assert (and (= l2 l3) (= l3 Nil) (is-Nil Nil)) )
(check-sat)