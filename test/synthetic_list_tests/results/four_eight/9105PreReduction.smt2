
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
(assert (= l3 l2) )
(assert (or (= l1 Nil) (= l3 l1) (= l3 Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (is-Cons l3) (= l1 Nil) (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(assert (not (= l0 l0)) )
(assert (is-Cons l0) )
(assert (not (is-Nil Nil)) )
(assert (= l0 Nil) )
(check-sat)
