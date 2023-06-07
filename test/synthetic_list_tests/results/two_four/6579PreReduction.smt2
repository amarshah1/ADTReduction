
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
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l1 Nil) (= l0 Nil)) )
(assert (or (= l0 l1) (= l0 Nil)) )
(check-sat)
