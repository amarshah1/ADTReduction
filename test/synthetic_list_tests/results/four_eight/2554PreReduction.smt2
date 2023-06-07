
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
(assert (= l1 l1) )
(assert (not (= l0 l3)) )
(assert (= l2 Nil) )
(assert (= l1 Nil) )
(assert (not (is-Cons l0)) )
(assert (not (= l3 l1)) )
(assert (or (= l3 Nil) (= l0 l2) (= l2 l1)) )
(assert (= l3 Nil) )
(check-sat)
