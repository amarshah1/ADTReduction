
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
(assert (not (is-Cons l1)) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(assert (or (is-Nil Nil) (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l0 Nil) (= l1 Nil)) )
(assert (= l3 Nil) )
(check-sat)
