
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
(assert (not (= l0 l0)) )
(assert (is-Nil l1) )
(assert (and (= l1 l1) (= l1 Nil) (is-Cons Nil)) )
(assert (not (= l1 Nil)) )
(check-sat)
