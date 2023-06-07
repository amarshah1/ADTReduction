
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
(assert (and (is-Cons Nil) (= l1 Nil) (= l1 l0)) )
(assert (and (= l1 Nil) (is-Nil l1) (= l0 Nil)) )
(assert (and (= l0 Nil) (is-Cons Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (= l0 Nil) (= l0 l0) (= l0 Nil)) )
(check-sat)
