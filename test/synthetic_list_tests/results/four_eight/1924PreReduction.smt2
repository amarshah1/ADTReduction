
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
(assert (= l0 Nil) )
(assert (or (is-Nil Nil) (= l1 Nil) (= l1 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (= l1 Nil) (is-Cons l1) (= l3 l1)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil l1) (= l2 Nil)) )
(assert (and (= l0 Nil) (= l3 Nil)) )
(check-sat)
