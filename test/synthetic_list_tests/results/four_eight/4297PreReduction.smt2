
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
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (= l2 l1) (is-Nil l3)) )
(assert (and (is-Cons Nil) (is-Cons l0) (= l3 l0)) )
(assert (not (is-Cons Nil)) )
(assert (or (is-Cons Nil) (= l1 l1) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(check-sat)
