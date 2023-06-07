
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
(assert (and (= l2 Nil) (= l0 l1)) )
(assert (and (= l2 Nil) (= l3 l2) (= l2 Nil) (is-Nil Nil)) )
(assert (= l2 Nil) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(assert (or (= l0 Nil) (= l0 Nil) (is-Nil l0) (is-Nil l1)) )
(assert (or (= l0 Nil) (= l3 Nil) (= l2 l3) (= l1 Nil)) )
(assert (is-Cons l3) )
(check-sat)
