
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
(assert (and (is-Cons Nil) (is-Cons Nil) (is-Cons Nil) (is-Cons l1)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons l1) (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)
