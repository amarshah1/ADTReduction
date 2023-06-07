
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
(assert (or (is-Cons Nil) (= l0 l3)) )
(assert (and (= l1 Nil) (is-Nil l3) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil l2) (is-Cons Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (is-Cons l2) (is-Cons Nil)) )
(assert (is-Nil l2) )
(check-sat)