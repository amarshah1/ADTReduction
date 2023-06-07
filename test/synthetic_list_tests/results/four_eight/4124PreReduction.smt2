
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
(assert (not (= l2 l3)) )
(assert (or (= l3 Nil) (= l1 l1)) )
(assert (not (= l1 Nil)) )
(assert (or (= l3 Nil) (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (is-Nil l0) (= l2 l0) (= l1 l2)) )
(assert (= l1 Nil) )
(check-sat)
