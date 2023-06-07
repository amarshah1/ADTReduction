
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
(assert (is-Cons l2) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (= l2 l0) (is-Nil l3) (is-Nil Nil) (= l1 Nil)) )
(assert (= l1 Nil) )
(assert (is-Cons l2) )
(assert (and (= l0 l1) (= l0 Nil)) )
(assert (not (= l1 Nil)) )
(check-sat)