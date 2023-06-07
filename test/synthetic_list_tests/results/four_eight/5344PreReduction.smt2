
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
(assert (and (is-Nil Nil) (= l0 Nil)) )
(assert (or (= l2 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (is-Nil l1) )
(assert (is-Nil Nil) )
(assert (= l1 l2) )
(assert (not (is-Nil l2)) )
(assert (or (= l1 Nil) (= l2 l1)) )
(assert (and (is-Cons l0) (is-Cons Nil) (is-Cons Nil)) )
(check-sat)
