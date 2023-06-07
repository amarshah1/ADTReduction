
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
(assert (= l1 Nil) )
(assert (and (is-Nil Nil) (= l0 Nil)) )
(assert (and (is-Cons l1) (is-Cons l1) (= l1 Nil) (= l1 l0)) )
(assert (or (is-Nil Nil) (= l0 Nil) (= l0 Nil)) )
(check-sat)
