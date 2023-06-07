
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
(assert (is-Nil l0) )
(assert (not (= l2 l3)) )
(assert (or (= l1 l1) (= l0 Nil) (= l2 l3) (= l1 Nil)) )
(assert (not (= l1 Nil)) )
(assert (or (= l1 Nil) (= l2 l2)) )
(assert (or (= l3 l3) (= l3 l2)) )
(assert (= l0 Nil) )
(assert (or (= l2 Nil) (= l3 l0)) )
(check-sat)
