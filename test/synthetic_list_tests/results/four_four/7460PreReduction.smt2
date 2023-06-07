
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
(assert (and (is-Nil Nil) (= l3 l0) (is-Nil Nil) (is-Nil Nil)) )
(assert (and (= l2 Nil) (is-Cons l1) (= l3 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Cons l2)) )
(check-sat)
