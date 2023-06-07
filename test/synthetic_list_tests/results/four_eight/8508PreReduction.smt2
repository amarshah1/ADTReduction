
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
(assert (or (= l2 Nil) (= l1 l3) (= l1 Nil) (is-Nil Nil)) )
(assert (= l2 l3) )
(assert (or (is-Nil l1) (= l2 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l1 Nil) (is-Cons l2) (= l2 l2)) )
(assert (or (= l0 Nil) (= l2 Nil) (= l1 l0)) )
(assert (is-Nil Nil) )
(assert (= l3 Nil) )
(assert (= l0 Nil) )
(check-sat)
