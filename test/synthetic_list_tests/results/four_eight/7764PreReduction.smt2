
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
(assert (and (= l3 l0) (= l2 Nil) (= l1 Nil) (= l0 l2)) )
(assert (not (= l2 Nil)) )
(assert (not (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (= l0 Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (or (= l3 Nil) (= l1 Nil) (is-Nil l0) (is-Cons Nil)) )
(check-sat)
