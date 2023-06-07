
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
(assert (or (= l3 Nil) (is-Cons Nil)) )
(assert (and (= l2 l0) (= l0 l0) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (is-Cons Nil) (is-Nil Nil) (is-Nil l2)) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (= l1 Nil) (= l2 Nil)) )
(assert (not (= l1 l3)) )
(assert (and (= l1 l0) (is-Nil l3)) )
(check-sat)
