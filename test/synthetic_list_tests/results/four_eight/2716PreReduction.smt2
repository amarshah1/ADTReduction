
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
(assert (or (= l3 l1) (= l3 Nil) (= l3 Nil)) )
(assert (not (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l3 Nil) (is-Nil Nil)) )
(assert (is-Nil l1) )
(assert (not (= l2 l2)) )
(assert (not (= l0 Nil)) )
(assert (and (is-Cons l2) (= l1 l1) (is-Nil Nil) (= l1 l2)) )
(check-sat)
