
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
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l1 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Cons l1) )
(assert (or (= l0 l2) (is-Cons l1) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Nil l1)) )
(assert (is-Nil Nil) )
(check-sat)
