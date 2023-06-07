
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
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l0 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (or (= l3 l0) (= l0 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (and (= l2 Nil) (is-Nil Nil)) )
(assert (not (= l3 l2)) )
(assert (not (= l2 Nil)) )
(check-sat)
