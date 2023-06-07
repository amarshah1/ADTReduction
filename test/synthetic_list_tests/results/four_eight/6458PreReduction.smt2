
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
(assert (or (= l1 Nil) (= l1 Nil) (is-Cons l2)) )
(assert (and (= l3 Nil) (= l2 l0)) )
(assert (and (is-Nil Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (is-Cons l2) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(assert (or (= l1 l1) (= l0 Nil)) )
(check-sat)
