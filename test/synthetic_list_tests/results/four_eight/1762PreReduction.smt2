
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
(assert (is-Nil l0) )
(assert (and (is-Nil l2) (= l2 l1) (= l2 Nil)) )
(assert (= l1 Nil) )
(assert (not (= l3 Nil)) )
(assert (is-Nil l0) )
(assert (and (= l0 Nil) (= l3 l2) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (= l2 Nil)) )
(assert (= l3 Nil) )
(check-sat)
