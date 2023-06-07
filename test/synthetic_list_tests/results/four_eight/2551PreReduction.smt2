
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
(assert (or (= l0 l3) (= l2 l2) (= l1 l3)) )
(assert (and (= l1 l3) (= l0 l2) (= l1 l1) (= l0 l3)) )
(assert (is-Nil l3) )
(assert (and (= l2 l0) (= l3 Nil) (= l3 Nil) (is-Nil l2)) )
(assert (not (is-Cons Nil)) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l1 l0) (= l3 Nil)) )
(assert (= l3 Nil) )
(assert (not (= l1 Nil)) )
(check-sat)
