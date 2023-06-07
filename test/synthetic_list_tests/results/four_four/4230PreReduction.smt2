
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
(assert (and (= l3 Nil) (= l1 l1)) )
(assert (or (= l0 l3) (= l0 l3) (is-Cons l2) (= l3 Nil)) )
(assert (and (= l0 l1) (is-Nil Nil) (is-Nil Nil)) )
(assert (not (= l1 Nil)) )
(check-sat)