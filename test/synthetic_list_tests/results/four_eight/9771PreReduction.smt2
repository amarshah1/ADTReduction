
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
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (not (= l0 l3)) )
(assert (is-Nil Nil) )
(assert (or (= l3 Nil) (= l2 Nil) (= l2 l3) (= l2 Nil)) )
(assert (and (= l1 l1) (= l1 Nil)) )
(assert (and (is-Nil Nil) (is-Cons l1) (= l0 Nil)) )
(assert (is-Cons l1) )
(check-sat)
