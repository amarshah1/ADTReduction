
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
(assert (not (is-Cons Nil)) )
(assert (and (= l1 Nil) (= l3 Nil) (= l0 Nil) (= l1 Nil)) )
(assert (and (= l1 l2) (= l2 l2) (= l1 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l2 Nil) (= l3 Nil)) )
(assert (or (= l0 l3) (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l3 Nil)) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l2 l0) (is-Nil l1)) )
(check-sat)
