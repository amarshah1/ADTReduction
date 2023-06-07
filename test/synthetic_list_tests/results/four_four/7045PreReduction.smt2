
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
(assert (is-Cons l1) )
(assert (is-Nil l2) )
(assert (or (is-Nil Nil) (is-Cons l2) (= l0 Nil) (is-Nil l0)) )
(assert (and (= l1 l1) (= l1 Nil)) )
(check-sat)
