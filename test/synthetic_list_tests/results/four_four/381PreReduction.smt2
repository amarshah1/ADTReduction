
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
(assert (and (= l2 Nil) (is-Nil l0) (= l0 Nil)) )
(assert (is-Cons l0) )
(assert (or (is-Nil Nil) (is-Cons Nil) (= l0 l1)) )
(assert (is-Cons l3) )
(check-sat)
