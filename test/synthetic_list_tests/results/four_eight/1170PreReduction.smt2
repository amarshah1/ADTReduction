
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
(assert (not (= l0 Nil)) )
(assert (not (= l1 l3)) )
(assert (is-Nil l2) )
(assert (not (= l1 Nil)) )
(assert (not (= l0 l0)) )
(assert (and (= l2 Nil) (= l2 Nil) (= l2 l3) (= l0 Nil)) )
(assert (= l1 Nil) )
(assert (= l3 Nil) )
(check-sat)
