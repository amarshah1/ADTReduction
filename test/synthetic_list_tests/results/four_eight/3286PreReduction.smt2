
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
(assert (= l3 Nil) )
(assert (= l0 Nil) )
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l1 l3) (= l3 Nil) (= l2 Nil)) )
(assert (not (= l3 Nil)) )
(assert (and (= l1 l0) (= l3 Nil) (is-Nil Nil) (= l2 l0)) )
(assert (or (= l1 l3) (is-Nil l1)) )
(check-sat)
