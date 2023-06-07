
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
(assert (and (= l1 l1) (= l0 l0) (is-Cons Nil) (= l0 Nil)) )
(assert (or (= l1 Nil) (= l0 l0) (= l0 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(check-sat)