
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
(assert (and (= l3 Nil) (= l3 l0) (is-Cons Nil) (is-Cons Nil)) )
(assert (not (= l2 l2)) )
(assert (or (= l2 Nil) (is-Nil l2)) )
(assert (or (= l0 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (is-Nil l0) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l1 l2) (= l1 Nil)) )
(assert (and (is-Cons Nil) (= l3 l3)) )
(check-sat)
