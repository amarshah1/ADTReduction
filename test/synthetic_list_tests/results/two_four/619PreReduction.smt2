
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (= l1 l1) )
(assert (or (is-Cons l1) (= l1 l1) (is-Nil Nil) (is-Nil l0)) )
(assert (is-Nil l1) )
(assert (is-Cons Nil) )
(check-sat)
