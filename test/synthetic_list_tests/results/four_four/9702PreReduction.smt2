
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
(assert (not (= l0 Nil)) )
(assert (and (= l2 l3) (= l0 Nil) (is-Nil Nil) (is-Cons l1)) )
(assert (= l1 Nil) )
(assert (and (is-Nil Nil) (is-Nil Nil) (is-Nil l1) (= l1 Nil)) )
(check-sat)
