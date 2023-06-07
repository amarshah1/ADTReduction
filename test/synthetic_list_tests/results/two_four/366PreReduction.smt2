
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
(assert (or (is-Cons Nil) (= l1 Nil) (is-Nil l0)) )
(assert (or (is-Cons l1) (= l0 l1) (= l0 Nil) (is-Nil Nil)) )
(assert (not (= l1 Nil)) )
(check-sat)
