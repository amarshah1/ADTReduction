
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
(assert (and (is-Nil Nil) (= l2 Nil) (= l2 Nil) (= l1 l0)) )
(assert (is-Nil l1) )
(assert (not (is-Nil Nil)) )
(assert (and (= l2 l0) (is-Cons l1) (= l1 Nil) (is-Nil l1)) )
(check-sat)
