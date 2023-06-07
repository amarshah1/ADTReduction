
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
(assert (is-Cons l1) )
(assert (not (= l0 l0)) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l1 l0) (= l0 Nil)) )
(assert (and (= l1 Nil) (= l1 Nil) (is-Cons l0)) )
(check-sat)
