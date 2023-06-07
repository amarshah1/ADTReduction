
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
(assert (and (is-Cons l2) (= l3 l2)) )
(assert (is-Nil Nil) )
(assert (= l3 Nil) )
(assert (is-Nil l3) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (= l1 Nil) (is-Nil Nil) (= l1 l1)) )
(assert (not (= l0 l3)) )
(assert (is-Nil Nil) )
(check-sat)
