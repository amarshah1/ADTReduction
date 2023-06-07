
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
(assert (and (= l0 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (or (= l2 l0) (is-Cons Nil) (is-Cons Nil) (is-Nil l3)) )
(assert (and (= l2 Nil) (= l1 Nil) (= l0 Nil)) )
(assert (or (is-Nil Nil) (= l1 Nil)) )
(assert (not (= l2 l2)) )
(assert (or (= l2 Nil) (is-Cons l3) (= l0 Nil) (is-Nil Nil)) )
(check-sat)
