
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
(assert (not (= l1 Nil)) )
(assert (or (= l0 Nil) (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (not (= l1 l2)) )
(assert (and (= l2 l2) (is-Nil l2) (is-Nil l0)) )
(assert (or (= l0 Nil) (is-Nil l3)) )
(assert (or (= l0 Nil) (is-Cons Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (not (= l2 l3)) )
(check-sat)
