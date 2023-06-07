
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
(assert (not (= l3 Nil)) )
(assert (or (= l0 Nil) (= l3 l0) (= l3 Nil)) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l1 l2) (= l1 l2)) )
(assert (not (= l3 l2)) )
(assert (not (= l0 l0)) )
(assert (is-Nil Nil) )
(assert (or (is-Cons l2) (= l0 Nil)) )
(assert (and (= l0 l3) (is-Nil l3) (= l2 l0)) )
(check-sat)
