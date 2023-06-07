
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
(assert (and (= l0 Nil) (= l3 Nil) (= l0 Nil)) )
(assert (not (= l0 Nil)) )
(assert (= l0 Nil) )
(assert (= l2 Nil) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (and (= l2 l2) (= l1 Nil) (= l3 Nil) (= l0 l2)) )
(assert (not (= l3 Nil)) )
(assert (or (= l2 l2) (is-Cons l2)) )
(check-sat)
