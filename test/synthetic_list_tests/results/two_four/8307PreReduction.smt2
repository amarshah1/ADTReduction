
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
(assert (and (= l1 l0) (= l1 Nil) (= l0 Nil)) )
(assert (and (= l1 Nil) (= l0 Nil) (= l1 l1)) )
(assert (is-Cons Nil) )
(assert (not (= l1 l0)) )
(check-sat)
