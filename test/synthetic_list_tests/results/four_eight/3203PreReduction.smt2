
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
(assert (or (is-Nil Nil) (= l3 Nil) (= l1 l3)) )
(assert (= l3 l1) )
(assert (is-Nil Nil) )
(assert (or (= l3 Nil) (= l3 l0) (= l0 Nil)) )
(assert (and (= l0 l3) (= l3 Nil) (= l3 l2) (= l3 Nil)) )
(assert (or (is-Nil l1) (= l3 Nil) (is-Cons l3)) )
(assert (not (= l0 Nil)) )
(assert (= l1 Nil) )
(check-sat)
