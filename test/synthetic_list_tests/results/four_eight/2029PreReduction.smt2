
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
(assert (= l0 l2) )
(assert (or (= l0 Nil) (= l1 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Nil l3) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (not (= l3 l1)) )
(check-sat)
