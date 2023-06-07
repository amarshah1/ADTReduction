
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
(assert (= l2 l1) )
(assert (or (= l1 l0) (= l0 Nil) (= l2 Nil) (= l3 l0)) )
(assert (is-Nil l2) )
(assert (or (= l1 Nil) (= l1 l0)) )
(check-sat)
