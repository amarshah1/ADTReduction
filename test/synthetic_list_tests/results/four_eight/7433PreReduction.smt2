
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
(assert (and (is-Nil Nil) (= l2 Nil) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons l2) )
(assert (not (= l0 Nil)) )
(assert (or (= l1 l1) (is-Nil l1)) )
(assert (is-Nil l0) )
(assert (= l3 Nil) )
(assert (and (= l2 Nil) (= l3 Nil) (is-Nil l1)) )
(check-sat)