
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
(assert (and (is-Cons Nil) (= l1 Nil) (is-Nil l1)) )
(assert (not (is-Nil Nil)) )
(assert (= l1 Nil) )
(assert (or (= l0 Nil) (= l1 Nil) (is-Cons Nil) (is-Cons l1)) )
(check-sat)
