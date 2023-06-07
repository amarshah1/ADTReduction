
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
(assert (or (= l1 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (is-Nil l0) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (= l2 l1) (= l1 Nil) (= l2 l2)) )
(assert (and (= l2 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(check-sat)