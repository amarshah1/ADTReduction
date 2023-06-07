
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
(assert (= l3 l2) )
(assert (and (= l0 l1) (= l0 Nil) (= l2 l3) (= l2 Nil)) )
(assert (not (is-Nil l1)) )
(assert (is-Nil Nil) )
(check-sat)
