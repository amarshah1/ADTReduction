
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
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (and (is-Nil l1) (is-Cons l2)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 l0) )
(assert (is-Cons l0) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l1 Nil) (= l1 Nil)) )
(check-sat)
