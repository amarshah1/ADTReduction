
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
(assert (not (= l0 Nil)) )
(assert (is-Cons l3) )
(assert (or (= l2 Nil) (= l3 l3)) )
(assert (or (is-Nil Nil) (= l1 l0)) )
(assert (= l2 Nil) )
(assert (and (= l1 l0) (= l3 Nil) (= l1 Nil) (= l0 l0)) )
(assert (and (= l1 Nil) (= l2 Nil) (= l3 l2)) )
(assert (= l0 Nil) )
(check-sat)
