
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
(assert (not (= l1 Nil)) )
(assert (and (= l1 l0) (is-Nil Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (not (is-Nil l0)) )
(check-sat)
