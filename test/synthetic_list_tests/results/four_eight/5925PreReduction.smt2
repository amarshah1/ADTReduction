
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
(assert (and (is-Nil Nil) (is-Nil Nil)) )
(assert (and (is-Nil l1) (= l0 l1) (is-Nil Nil) (= l0 l3)) )
(assert (and (= l1 Nil) (= l1 l2) (= l2 l3)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)
