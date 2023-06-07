
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
(assert (= l1 l1) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l1 Nil) (= l0 l1)) )
(assert (is-Cons l1) )
(check-sat)
