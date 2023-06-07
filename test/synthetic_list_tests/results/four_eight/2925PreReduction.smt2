
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
(assert (and (= l1 l0) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (or (= l0 Nil) (= l0 Nil) (= l3 l2)) )
(assert (is-Nil Nil) )
(assert (or (is-Cons l3) (= l3 l2) (= l0 Nil)) )
(assert (and (= l0 Nil) (is-Cons l2)) )
(assert (not (= l3 Nil)) )
(check-sat)
