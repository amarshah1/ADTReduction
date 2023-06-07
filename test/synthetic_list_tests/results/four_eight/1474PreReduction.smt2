
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
(assert (= l2 l3) )
(assert (= l2 Nil) )
(assert (and (is-Nil Nil) (= l0 Nil) (= l3 Nil) (= l3 Nil)) )
(assert (and (is-Cons l0) (= l1 Nil) (= l2 Nil) (= l0 Nil)) )
(assert (is-Nil l0) )
(assert (not (= l3 Nil)) )
(assert (not (is-Nil l0)) )
(assert (= l2 Nil) )
(check-sat)
