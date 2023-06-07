
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
(assert (= l2 Nil) )
(assert (and (= l3 Nil) (= l1 l0) (= l2 l2) (= l3 Nil)) )
(assert (not (is-Nil l3)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (and (= l2 l3) (= l3 Nil)) )
(assert (or (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(check-sat)