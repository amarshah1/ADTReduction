
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
(assert (not (= l2 Nil)) )
(assert (or (= l3 Nil) (= l3 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (and (= l2 l1) (is-Nil Nil)) )
(assert (is-Cons l1) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (= l1 l3) (= l1 l0) (= l0 l2)) )
(assert (= l0 Nil) )
(assert (not (= l2 Nil)) )
(check-sat)
