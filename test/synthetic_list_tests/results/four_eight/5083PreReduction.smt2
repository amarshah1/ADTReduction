
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
(assert (or (is-Cons l1) (= l1 Nil) (= l0 Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (= l1 l1)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons l1) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l2 l3)) )
(assert (not (= l1 Nil)) )
(check-sat)
