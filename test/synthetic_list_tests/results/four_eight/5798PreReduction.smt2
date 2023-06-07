
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
(assert (and (= l2 l1) (= l2 l3) (is-Cons Nil) (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (and (is-Cons l0) (is-Cons Nil) (= l3 Nil)) )
(assert (and (is-Cons Nil) (= l2 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (or (= l0 Nil) (= l0 l3) (= l0 Nil)) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l1 l2)) )
(assert (= l2 l1) )
(check-sat)
