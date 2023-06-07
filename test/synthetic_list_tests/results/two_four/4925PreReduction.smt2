
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
(assert (and (= l1 Nil) (is-Nil Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (not (is-Cons l0)) )
(check-sat)
