
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
(assert (= l0 l3) )
(assert (not (= l3 l0)) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l0 Nil) (= l2 Nil)) )
(assert (or (= l0 Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l0) )
(check-sat)
