
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
(assert (is-Nil l3) )
(assert (and (= l3 l2) (= l1 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (= l2 Nil) (= l3 l2)) )
(assert (or (is-Cons Nil) (= l0 l0) (is-Cons Nil) (is-Nil Nil)) )
(assert (or (= l0 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (= l2 Nil) (is-Nil Nil) (= l1 Nil)) )
(check-sat)
