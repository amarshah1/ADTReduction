
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
(assert (or (is-Nil Nil) (is-Nil Nil) (= l0 l0)) )
(assert (and (= l1 Nil) (= l1 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (or (= l1 Nil) (is-Cons l0) (= l0 l1)) )
(assert (is-Nil Nil) )
(assert (not (= l3 Nil)) )
(assert (is-Cons l3) )
(assert (and (= l2 Nil) (= l3 Nil) (is-Cons l3)) )
(check-sat)