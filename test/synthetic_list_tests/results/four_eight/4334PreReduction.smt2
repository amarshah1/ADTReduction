
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
(assert (and (= l3 l1) (= l1 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (not (= l1 Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil)) )
(assert (or (= l0 l1) (= l3 Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l0 l0) (is-Nil l2)) )
(assert (is-Nil l0) )
(assert (or (= l2 l2) (= l1 Nil) (= l1 Nil)) )
(assert (and (= l2 l3) (= l3 l3) (is-Nil Nil) (is-Nil l2)) )
(check-sat)
