
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
(assert (or (= l1 l0) (= l1 l1)) )
(assert (not (= l0 l2)) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (= l0 Nil) (= l1 Nil)) )
(assert (not (is-Nil l0)) )
(assert (not (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (not (= l3 l0)) )
(check-sat)
