
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
(assert (or (= l0 Nil) (= l0 Nil)) )
(assert (= l0 l0) )
(assert (or (= l1 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (and (= l0 Nil) (is-Cons Nil) (is-Cons Nil) (= l3 l0)) )
(assert (is-Cons l1) )
(assert (not (is-Cons Nil)) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Cons Nil) (= l0 l1) (is-Nil l3) (= l1 Nil)) )
(check-sat)
