
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
(assert (or (is-Cons l1) (= l0 Nil) (is-Cons Nil)) )
(assert (not (= l0 Nil)) )
(assert (or (= l3 l3) (is-Cons Nil)) )
(assert (and (= l3 l3) (= l3 Nil) (is-Nil l1)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (is-Cons l0) (= l1 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(check-sat)
