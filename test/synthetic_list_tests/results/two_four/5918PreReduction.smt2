
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
(assert (and (= l0 Nil) (= l1 l0) (is-Cons l0) (= l0 Nil)) )
(assert (and (= l1 Nil) (= l0 Nil) (is-Cons Nil) (is-Nil l1)) )
(assert (or (= l0 Nil) (= l1 l1)) )
(check-sat)
