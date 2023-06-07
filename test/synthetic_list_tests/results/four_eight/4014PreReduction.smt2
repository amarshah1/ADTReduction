
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
(assert (or (is-Cons Nil) (= l2 Nil) (is-Cons l3) (is-Nil Nil)) )
(assert (and (is-Nil l2) (is-Cons Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (and (= l3 l0) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l2 Nil) (is-Cons Nil)) )
(check-sat)
