
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
(assert (and (= l1 Nil) (is-Cons l0) (is-Nil Nil) (= l1 Nil)) )
(assert (is-Cons l3) )
(assert (is-Nil l3) )
(assert (is-Cons Nil) )
(check-sat)
