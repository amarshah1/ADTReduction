
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
(assert (= l1 Nil) )
(assert (= l1 Nil) )
(assert (or (is-Cons Nil) (= l1 Nil) (= l0 l0) (= l1 Nil)) )
(assert (and (= l1 l1) (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(check-sat)
