
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
(assert (and (= l1 l1) (is-Nil Nil) (= l3 Nil) (= l3 Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (= l2 Nil) (= l1 Nil)) )
(assert (is-Nil l0) )
(assert (= l2 l2) )
(assert (= l2 Nil) )
(assert (is-Cons l3) )
(assert (or (= l3 Nil) (is-Cons l3) (= l2 Nil) (= l1 l3)) )
(check-sat)
