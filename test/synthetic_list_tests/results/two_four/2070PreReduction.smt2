
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
(assert (not (= l0 Nil)) )
(assert (= l1 l1) )
(assert (= l1 Nil) )
(assert (or (= l0 l0) (= l1 l0) (is-Cons l1)) )
(check-sat)