
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
(assert (not (= l3 Nil)) )
(assert (or (= l3 Nil) (= l1 Nil)) )
(assert (and (= l2 l2) (is-Nil l3) (= l0 Nil) (is-Cons l3)) )
(assert (and (= l0 Nil) (= l1 l3) (= l0 Nil)) )
(assert (and (= l3 Nil) (= l2 Nil) (= l0 Nil) (is-Nil l3)) )
(assert (= l2 Nil) )
(assert (not (is-Nil Nil)) )
(assert (= l3 Nil) )
(check-sat)
