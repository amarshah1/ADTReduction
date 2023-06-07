
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
(assert (and (= l3 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (= l1 l2) )
(assert (or (= l1 Nil) (= l2 l3) (= l0 Nil) (= l3 Nil)) )
(check-sat)
