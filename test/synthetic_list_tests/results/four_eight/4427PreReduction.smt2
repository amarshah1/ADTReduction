
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
(assert (and (is-Nil Nil) (= l2 Nil) (= l0 Nil) (= l2 Nil)) )
(assert (= l0 l3) )
(assert (= l2 l1) )
(assert (= l0 Nil) )
(assert (or (is-Cons Nil) (= l1 Nil) (is-Nil Nil) (= l2 l2)) )
(assert (or (= l1 Nil) (= l3 Nil)) )
(assert (and (is-Nil l0) (is-Nil Nil)) )
(assert (or (= l0 Nil) (= l2 Nil)) )
(check-sat)
