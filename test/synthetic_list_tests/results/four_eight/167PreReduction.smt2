
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
(assert (= l1 l2) )
(assert (= l1 l0) )
(assert (and (= l2 l3) (= l3 l1)) )
(assert (is-Nil l0) )
(assert (not (= l0 Nil)) )
(assert (and (= l1 Nil) (= l2 Nil)) )
(assert (and (= l2 Nil) (= l3 Nil) (= l2 l0)) )
(assert (and (= l2 Nil) (= l3 l3)) )
(check-sat)
