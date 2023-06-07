
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
(assert (and (is-Cons Nil) (= l0 Nil) (= l0 Nil) (= l0 l1)) )
(assert (= l1 Nil) )
(assert (not (is-Cons l1)) )
(assert (and (is-Cons Nil) (= l0 Nil)) )
(check-sat)
