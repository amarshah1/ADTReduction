
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
(assert (and (= l1 Nil) (= l2 l3) (= l2 l2)) )
(assert (not (= l2 Nil)) )
(assert (and (= l1 l0) (= l1 Nil) (= l2 l3)) )
(assert (is-Cons l1) )
(check-sat)
