
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
(assert (and (is-Nil l2) (is-Nil Nil) (= l1 l0)) )
(assert (and (= l0 Nil) (is-Cons Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (or (= l1 Nil) (= l3 l1) (is-Nil l2) (= l3 Nil)) )
(assert (and (= l2 l3) (= l2 Nil) (= l3 Nil)) )
(assert (and (= l0 Nil) (= l2 Nil) (is-Nil Nil) (= l1 l0)) )
(assert (or (= l3 l3) (= l1 Nil)) )
(assert (or (= l1 Nil) (= l1 l0)) )
(assert (not (= l3 l2)) )
(check-sat)
