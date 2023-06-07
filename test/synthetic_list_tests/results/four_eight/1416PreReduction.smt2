
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
(assert (not (= l1 l0)) )
(assert (and (is-Nil Nil) (is-Nil l1) (= l1 l0)) )
(assert (is-Cons l3) )
(assert (or (is-Nil Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (= l1 l3) )
(assert (or (= l0 l2) (is-Nil l2) (= l2 l3)) )
(assert (and (= l0 l1) (= l3 l1)) )
(check-sat)
