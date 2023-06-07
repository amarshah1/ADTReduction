
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
(assert (and (is-Nil Nil) (is-Nil Nil)) )
(assert (or (= l0 l2) (= l0 Nil)) )
(assert (and (= l3 Nil) (= l3 Nil) (is-Cons l2) (is-Cons l1)) )
(assert (is-Cons Nil) )
(check-sat)
