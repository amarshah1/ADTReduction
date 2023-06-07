
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
(assert (and (= l2 Nil) (is-Nil Nil)) )
(assert (not (= l0 Nil)) )
(assert (= l0 Nil) )
(assert (is-Nil Nil) )
(assert (and (is-Nil l0) (= l1 Nil) (is-Nil l2)) )
(assert (= l1 l3) )
(assert (and (= l2 l2) (is-Cons Nil) (is-Nil Nil) (is-Cons Nil)) )
(check-sat)