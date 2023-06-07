
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
(assert (= l3 Nil) )
(assert (not (= l3 l0)) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l1 Nil) (= l3 Nil)) )
(assert (or (= l0 Nil) (is-Nil Nil)) )
(assert (is-Cons l3) )
(assert (or (= l0 Nil) (= l1 Nil) (= l1 l0)) )
(assert (and (= l0 Nil) (= l0 Nil) (= l1 l1)) )
(assert (not (= l2 Nil)) )
(check-sat)
