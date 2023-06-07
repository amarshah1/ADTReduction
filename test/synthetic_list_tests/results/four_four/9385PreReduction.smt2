
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
(assert (is-Cons Nil) )
(assert (and (= l3 l2) (= l0 l1) (= l3 Nil) (is-Cons l1)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
