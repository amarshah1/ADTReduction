
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
(assert (or (is-Nil Nil) (= l0 Nil)) )
(assert (= l1 l1) )
(assert (or (= l1 Nil) (= l1 Nil)) )
(assert (or (= l1 Nil) (= l1 Nil) (= l0 Nil) (is-Cons Nil)) )
(check-sat)
