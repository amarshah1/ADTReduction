
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
(assert (and (= l0 l0) (= l1 l2)) )
(assert (and (= l0 l0) (is-Cons Nil) (= l1 Nil)) )
(assert (or (is-Nil Nil) (= l2 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (is-Nil l0) )
(assert (or (is-Cons l1) (is-Cons Nil) (is-Cons Nil) (= l2 l0)) )
(assert (not (= l0 Nil)) )
(check-sat)
