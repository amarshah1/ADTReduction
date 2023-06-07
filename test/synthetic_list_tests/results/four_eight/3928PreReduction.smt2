
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
(assert (is-Nil l2) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (= l0 l1) (is-Cons l1) (= l1 l2)) )
(assert (is-Nil l3) )
(assert (or (= l0 Nil) (= l2 Nil) (= l2 Nil) (= l2 l2)) )
(assert (= l0 Nil) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (not (is-Cons l1)) )
(check-sat)
