
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
(assert (or (= l1 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (is-Nil l0) )
(assert (and (is-Nil Nil) (is-Cons Nil)) )
(assert (and (= l1 Nil) (= l1 Nil) (is-Cons l1)) )
(check-sat)
