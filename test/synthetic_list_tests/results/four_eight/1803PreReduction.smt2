
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
(assert (or (= l0 Nil) (= l1 Nil)) )
(assert (not (is-Cons l1)) )
(assert (not (= l3 Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (= l0 l3) (is-Cons l1) (= l2 l3)) )
(assert (is-Nil Nil) )
(assert (is-Cons l1) )
(assert (or (= l3 Nil) (= l1 Nil) (= l2 l2)) )
(check-sat)
