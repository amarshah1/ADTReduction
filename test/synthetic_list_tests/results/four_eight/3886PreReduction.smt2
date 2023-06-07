
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
(assert (and (= l3 l0) (is-Cons Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (not (is-Nil l0)) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (= l1 Nil)) )
(assert (or (= l2 Nil) (is-Nil l3) (is-Cons Nil) (= l0 Nil)) )
(assert (and (= l2 Nil) (is-Cons l3) (= l1 Nil) (= l0 l2)) )
(assert (or (is-Nil Nil) (= l2 Nil) (is-Cons Nil) (= l1 Nil)) )
(check-sat)
