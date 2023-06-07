
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
(assert (or (= l1 Nil) (= l2 Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (is-Nil Nil) (is-Cons l0)) )
(assert (and (= l3 Nil) (= l3 l2) (is-Cons Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (is-Nil Nil)) )
(assert (is-Nil l0) )
(assert (and (= l3 Nil) (= l0 l0)) )
(assert (or (= l0 Nil) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
