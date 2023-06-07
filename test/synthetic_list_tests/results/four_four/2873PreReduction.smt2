
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
(assert (or (= l0 l2) (= l3 l1) (= l3 l1) (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(assert (and (= l3 Nil) (= l3 l2) (= l1 Nil) (is-Nil Nil)) )
(assert (is-Cons l2) )
(check-sat)
