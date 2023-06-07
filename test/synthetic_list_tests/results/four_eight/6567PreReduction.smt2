
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
(assert (is-Cons l2) )
(assert (is-Cons l3) )
(assert (or (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Cons l3) )
(assert (and (is-Nil Nil) (= l1 Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l0 l3)) )
(assert (and (= l2 Nil) (= l2 Nil) (= l3 Nil) (= l1 Nil)) )
(check-sat)
