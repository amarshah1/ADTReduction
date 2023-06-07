
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
(assert (not (= l2 Nil)) )
(assert (and (= l2 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons l3) )
(assert (and (is-Nil l3) (is-Cons l1) (is-Nil l1) (= l2 l1)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l1 l0) (= l0 Nil)) )
(assert (= l3 Nil) )
(assert (not (= l0 Nil)) )
(check-sat)
