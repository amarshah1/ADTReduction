
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
(assert (and (= l3 Nil) (= l2 Nil) (= l3 Nil) (= l3 Nil)) )
(assert (is-Cons l2) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(assert (not (is-Nil l1)) )
(assert (= l1 Nil) )
(assert (not (= l0 l3)) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l0 Nil)) )
(check-sat)
