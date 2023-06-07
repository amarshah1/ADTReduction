
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
(assert (= l0 Nil) )
(assert (or (= l0 Nil) (= l1 Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(assert (or (= l1 Nil) (is-Cons l2) (is-Cons Nil)) )
(assert (not (= l0 Nil)) )
(assert (not (= l3 Nil)) )
(assert (= l0 Nil) )
(check-sat)
