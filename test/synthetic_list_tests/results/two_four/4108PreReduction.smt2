
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
(assert (and (is-Cons l0) (= l0 l0) (is-Cons Nil)) )
(assert (or (= l1 Nil) (= l1 Nil)) )
(assert (= l0 Nil) )
(check-sat)
