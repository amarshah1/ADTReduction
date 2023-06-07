
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
(assert (and (= l1 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l3 Nil) (= l1 l3) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l3 l0) (= l2 Nil)) )
(assert (and (is-Cons Nil) (is-Nil Nil)) )
(assert (and (is-Cons l0) (= l1 Nil) (is-Nil l2) (is-Cons Nil)) )
(assert (or (= l2 Nil) (= l0 Nil) (= l2 Nil) (is-Cons l2)) )
(assert (= l3 Nil) )
(check-sat)
