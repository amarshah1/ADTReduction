
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
(assert (not (= l1 l2)) )
(assert (= l1 Nil) )
(assert (or (= l3 l0) (= l3 l0) (is-Cons l3) (= l0 Nil)) )
(assert (not (= l2 l3)) )
(check-sat)
