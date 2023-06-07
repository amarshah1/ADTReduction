
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
(assert (is-Nil l0) )
(assert (= l1 Nil) )
(assert (or (= l2 l2) (= l1 Nil)) )
(assert (not (is-Nil l1)) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (= l0 Nil)) )
(assert (or (is-Nil Nil) (= l2 l2)) )
(check-sat)
