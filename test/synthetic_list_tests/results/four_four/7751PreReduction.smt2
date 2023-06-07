
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
(assert (and (is-Nil Nil) (is-Cons l1) (= l3 Nil)) )
(assert (= l2 l0) )
(assert (is-Nil l1) )
(assert (and (= l2 Nil) (= l3 Nil) (= l3 Nil) (= l3 l2)) )
(check-sat)
