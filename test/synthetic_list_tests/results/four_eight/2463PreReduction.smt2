
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
(assert (or (= l3 l3) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l2 Nil)) )
(assert (and (= l0 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (and (is-Cons Nil) (is-Cons Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons l0) )
(assert (or (is-Nil l0) (is-Nil Nil) (= l1 Nil)) )
(check-sat)
