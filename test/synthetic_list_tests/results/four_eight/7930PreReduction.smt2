
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
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(assert (and (= l2 Nil) (= l2 l3)) )
(assert (or (= l1 l1) (= l3 l2)) )
(assert (and (= l2 Nil) (= l1 l3) (= l3 Nil) (= l1 Nil)) )
(assert (is-Nil l1) )
(assert (= l2 Nil) )
(assert (not (= l0 Nil)) )
(check-sat)