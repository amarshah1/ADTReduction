
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
(assert (and (is-Nil l1) (is-Nil l0)) )
(assert (or (= l3 Nil) (is-Nil Nil)) )
(assert (is-Cons l3) )
(assert (and (= l0 Nil) (= l2 l2) (= l1 Nil)) )
(check-sat)
