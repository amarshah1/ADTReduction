
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
(assert (or (is-Cons Nil) (is-Cons l0)) )
(assert (or (= l2 l0) (= l0 Nil) (= l1 Nil)) )
(assert (or (is-Nil l1) (= l2 Nil) (= l3 Nil)) )
(assert (= l3 Nil) )
(assert (and (is-Cons Nil) (= l3 Nil)) )
(assert (and (= l2 l0) (= l0 Nil)) )
(assert (not (= l0 l2)) )
(assert (and (is-Cons Nil) (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
