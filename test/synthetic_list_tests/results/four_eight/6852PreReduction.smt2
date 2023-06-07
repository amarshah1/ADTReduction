
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
(assert (or (is-Nil Nil) (= l1 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (and (= l3 Nil) (= l0 l2)) )
(assert (= l0 Nil) )
(assert (and (= l3 Nil) (= l1 l2)) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l3) )
(check-sat)
