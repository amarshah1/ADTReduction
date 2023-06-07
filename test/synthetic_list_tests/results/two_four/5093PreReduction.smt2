
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
(assert (= l0 Nil) )
(assert (and (is-Cons Nil) (= l1 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (or (= l0 Nil) (= l1 Nil) (is-Cons l1) (= l1 Nil)) )
(assert (= l1 Nil) )
(check-sat)
