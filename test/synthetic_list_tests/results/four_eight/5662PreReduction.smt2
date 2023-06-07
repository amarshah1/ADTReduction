
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
(assert (and (= l2 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (or (= l0 Nil) (is-Cons l2) (= l3 Nil) (= l1 Nil)) )
(assert (and (is-Nil l0) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (= l0 l2) )
(assert (not (= l1 Nil)) )
(check-sat)
