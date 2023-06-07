
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
(assert (and (= l1 l1) (= l3 Nil)) )
(assert (or (= l2 Nil) (= l3 Nil) (= l0 Nil)) )
(assert (is-Nil l0) )
(assert (and (= l3 l3) (is-Nil Nil)) )
(assert (is-Cons l3) )
(assert (is-Nil l2) )
(assert (and (= l1 l2) (= l1 l1)) )
(assert (is-Nil Nil) )
(check-sat)
