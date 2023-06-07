
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
(assert (and (= l1 l3) (= l0 Nil)) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l2 Nil) (= l0 l2)) )
(assert (or (is-Cons l2) (= l0 Nil) (= l1 l1)) )
(assert (not (= l3 Nil)) )
(check-sat)
