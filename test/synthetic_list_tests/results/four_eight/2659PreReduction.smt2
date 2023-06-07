
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
(assert (not (is-Cons Nil)) )
(assert (is-Cons l3) )
(assert (or (is-Cons Nil) (= l2 l0) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (= l3 l1) (= l0 l0) (is-Nil l0)) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (= l1 Nil) (= l0 l0) (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(check-sat)
