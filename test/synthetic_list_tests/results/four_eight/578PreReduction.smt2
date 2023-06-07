
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
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (and (is-Nil Nil) (is-Nil l0)) )
(assert (is-Cons l3) )
(assert (and (= l0 Nil) (= l0 Nil) (= l0 l2)) )
(assert (= l2 l3) )
(assert (or (= l1 l0) (= l3 Nil) (= l2 Nil) (= l0 Nil)) )
(check-sat)
