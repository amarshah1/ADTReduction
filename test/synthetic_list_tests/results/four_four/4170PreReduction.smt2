
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
(assert (not (= l0 l1)) )
(assert (= l3 Nil) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l2 Nil) (= l1 Nil)) )
(assert (and (is-Cons l2) (is-Cons l2)) )
(check-sat)
