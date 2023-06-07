
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
(assert (is-Cons Nil) )
(assert (is-Nil l1) )
(assert (not (= l0 Nil)) )
(assert (and (= l1 l1) (= l0 Nil) (= l0 l0) (is-Cons l0)) )
(check-sat)
