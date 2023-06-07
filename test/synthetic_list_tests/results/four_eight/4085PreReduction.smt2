
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
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (or (= l1 Nil) (= l2 Nil)) )
(assert (or (= l2 l3) (= l1 l2)) )
(check-sat)
