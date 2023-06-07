
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
(assert (= l1 Nil) )
(assert (not (= l0 Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l0 l2)) )
(assert (or (is-Nil Nil) (= l3 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (or (= l3 Nil) (= l3 Nil)) )
(assert (and (= l3 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
