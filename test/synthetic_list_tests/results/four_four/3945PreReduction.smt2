
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
(assert (not (= l2 l1)) )
(assert (or (= l3 Nil) (is-Nil l0) (= l3 Nil) (is-Nil l2)) )
(assert (or (= l3 Nil) (= l2 l3)) )
(check-sat)