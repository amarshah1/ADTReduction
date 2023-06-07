
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
(assert (and (is-Nil l3) (= l3 Nil) (= l3 l3)) )
(assert (= l2 l0) )
(assert (or (= l3 Nil) (is-Cons l1) (= l3 Nil) (= l3 Nil)) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l2 Nil) (= l3 Nil)) )
(check-sat)