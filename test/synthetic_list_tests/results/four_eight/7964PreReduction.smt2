
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
(assert (= l1 Nil) )
(assert (and (= l1 Nil) (= l0 l2) (= l3 Nil)) )
(assert (= l1 Nil) )
(assert (= l3 l3) )
(assert (and (= l1 l2) (is-Nil Nil)) )
(assert (or (= l2 l3) (= l2 Nil) (is-Cons l1) (= l2 l2)) )
(assert (= l2 Nil) )
(assert (and (= l2 Nil) (= l0 Nil) (= l2 Nil)) )
(check-sat)
