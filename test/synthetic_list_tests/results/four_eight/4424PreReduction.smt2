
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
(assert (and (is-Cons Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (and (= l0 Nil) (is-Nil Nil)) )
(assert (and (is-Nil l1) (is-Cons Nil) (= l2 l1) (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (and (is-Nil l1) (= l2 l0) (= l3 l1) (= l1 l2)) )
(assert (or (= l2 l1) (= l3 l2) (is-Cons l2) (= l0 Nil)) )
(assert (= l2 l1) )
(assert (= l0 Nil) )
(check-sat)
