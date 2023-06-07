
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
(assert (and (= l1 Nil) (= l1 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (and (= l0 Nil) (is-Cons l3)) )
(assert (and (is-Cons l3) (is-Nil Nil) (= l3 l0)) )
(assert (is-Nil l0) )
(check-sat)
