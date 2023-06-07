
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
(assert (is-Nil l1) )
(assert (and (= l3 l3) (= l3 Nil) (is-Nil l0) (= l3 l3)) )
(assert (or (= l1 Nil) (= l1 Nil) (= l3 l3) (is-Nil Nil)) )
(assert (or (= l2 Nil) (= l3 Nil)) )
(assert (= l0 l1) )
(assert (is-Cons l1) )
(assert (and (= l2 Nil) (= l1 l1) (= l2 Nil)) )
(assert (not (= l3 l2)) )
(check-sat)
