
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
(assert (not (is-Cons Nil)) )
(assert (and (= l0 Nil) (= l0 Nil) (= l1 Nil) (= l1 Nil)) )
(assert (or (= l1 Nil) (= l0 Nil) (is-Cons Nil) (= l1 l1)) )
(check-sat)
