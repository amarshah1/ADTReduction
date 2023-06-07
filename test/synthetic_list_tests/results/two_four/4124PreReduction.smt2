
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
(assert (or (= l1 Nil) (= l1 Nil) (is-Cons Nil) (is-Cons l0)) )
(assert (or (= l0 Nil) (= l1 Nil) (is-Nil l0) (= l0 Nil)) )
(assert (is-Nil l1) )
(assert (not (= l1 l1)) )
(check-sat)
