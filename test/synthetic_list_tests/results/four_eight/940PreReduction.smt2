
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
(assert (is-Nil l2) )
(assert (or (= l1 Nil) (is-Cons Nil) (is-Cons l2) (= l0 Nil)) )
(assert (not (is-Cons l2)) )
(assert (and (= l2 Nil) (= l3 l0) (is-Nil l1) (= l2 Nil)) )
(assert (is-Cons l1) )
(assert (is-Cons l1) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l3 l1)) )
(assert (is-Cons Nil) )
(check-sat)
