
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
(assert (or (= l1 l1) (= l2 Nil)) )
(assert (or (= l2 Nil) (= l1 l0) (is-Nil Nil) (= l0 Nil)) )
(assert (and (is-Nil l3) (is-Nil l1) (= l1 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (not (is-Cons Nil)) )
(assert (and (= l1 l2) (= l3 Nil)) )
(assert (= l3 Nil) )
(assert (and (= l3 Nil) (= l3 Nil)) )
(check-sat)
