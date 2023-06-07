
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
(assert (or (= l0 Nil) (= l1 Nil) (is-Nil l1)) )
(assert (or (is-Nil Nil) (= l0 Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (= l1 l1) )
(assert (is-Cons Nil) )
(check-sat)
