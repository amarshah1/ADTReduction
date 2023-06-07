
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
(assert (is-Nil Nil) )
(assert (or (= l3 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (or (is-Cons l1) (is-Nil Nil) (= l1 Nil) (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (is-Cons l1) )
(assert (and (= l1 l1) (= l0 Nil) (= l2 Nil)) )
(check-sat)
