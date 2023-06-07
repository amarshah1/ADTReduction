
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
(assert (not (is-Cons l3)) )
(assert (not (= l2 Nil)) )
(assert (is-Nil l2) )
(assert (and (= l2 Nil) (is-Cons l0) (is-Cons l0) (is-Nil l2)) )
(assert (is-Nil l1) )
(assert (is-Nil l1) )
(assert (or (= l1 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (= l0 Nil) )
(check-sat)
