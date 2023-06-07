
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
(assert (not (= l0 Nil)) )
(assert (and (= l1 Nil) (= l0 Nil) (= l1 l1) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Cons l1)) )
(check-sat)
