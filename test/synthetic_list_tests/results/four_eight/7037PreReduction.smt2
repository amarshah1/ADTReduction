
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
(assert (is-Cons l3) )
(assert (and (= l0 Nil) (= l1 Nil)) )
(assert (= l3 Nil) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (or (= l0 Nil) (= l1 l1) (= l3 Nil)) )
(assert (= l0 l0) )
(assert (and (= l0 l1) (= l1 Nil)) )
(check-sat)
