
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
(assert (not (= l0 l3)) )
(assert (not (= l2 Nil)) )
(assert (not (= l3 Nil)) )
(assert (not (= l0 l1)) )
(assert (is-Nil Nil) )
(assert (not (= l3 l1)) )
(assert (or (= l0 l3) (= l2 Nil) (= l3 l3) (= l3 l2)) )
(assert (not (= l2 l1)) )
(check-sat)
