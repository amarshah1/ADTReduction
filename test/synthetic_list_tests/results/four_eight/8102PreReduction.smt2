
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
(assert (is-Nil l3) )
(assert (or (= l3 l3) (= l1 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (and (is-Nil Nil) (is-Cons l0) (= l2 l1) (= l0 Nil)) )
(assert (or (= l0 Nil) (is-Cons Nil) (is-Cons l1) (is-Nil l0)) )
(assert (or (= l1 Nil) (is-Nil l3) (= l3 Nil)) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l0 l2)) )
(check-sat)
