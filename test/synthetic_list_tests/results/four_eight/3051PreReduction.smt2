
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
(assert (and (is-Nil Nil) (is-Cons l2) (= l0 Nil) (is-Nil l2)) )
(assert (not (= l3 Nil)) )
(assert (or (= l3 Nil) (= l3 Nil) (= l1 Nil)) )
(assert (not (= l2 l2)) )
(assert (= l3 l0) )
(assert (is-Nil Nil) )
(assert (not (= l2 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
