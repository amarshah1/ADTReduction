
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
(assert (and (is-Cons l3) (= l2 Nil)) )
(assert (and (is-Nil l0) (is-Cons Nil) (= l1 l0) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (is-Cons l2) (= l0 Nil)) )
(assert (or (= l1 Nil) (= l1 l3)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l0 Nil) (= l0 l3)) )
(check-sat)
