
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
(assert (and (= l1 l1) (= l1 Nil) (= l1 Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (= l1 l0) (is-Cons l1)) )
(assert (not (is-Cons Nil)) )
(assert (and (is-Cons Nil) (is-Cons l1) (= l0 Nil) (= l1 l0)) )
(check-sat)
