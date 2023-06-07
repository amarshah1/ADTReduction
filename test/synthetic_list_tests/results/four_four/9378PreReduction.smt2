
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (is-Nil l1) )
(assert (and (is-Cons Nil) (is-Cons l3)) )
(assert (not (= l0 l2)) )
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Cons Nil)) )
(check-sat)