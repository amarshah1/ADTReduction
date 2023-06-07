
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
(assert (and (is-Cons l0) (= l0 Nil)) )
(assert (or (= l2 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (or (= l0 Nil) (= l2 Nil) (= l0 l3) (= l1 l1)) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(assert (not (= l2 l0)) )
(assert (not (= l2 l2)) )
(assert (is-Nil Nil) )
(check-sat)
