
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
(assert (is-Cons l3) )
(assert (or (= l1 l3) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (= l2 Nil) (= l1 l0) (is-Nil l2)) )
(assert (or (= l1 Nil) (= l1 l1)) )
(assert (= l2 Nil) )
(assert (or (is-Nil Nil) (= l3 l1)) )
(assert (not (is-Nil Nil)) )
(check-sat)
