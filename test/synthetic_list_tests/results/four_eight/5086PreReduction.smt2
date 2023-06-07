
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
(assert (not (= l1 l2)) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l2 l0) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l2 l0) (= l3 Nil) (is-Nil Nil)) )
(assert (= l0 Nil) )
(assert (is-Cons l2) )
(assert (or (is-Cons Nil) (= l0 Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (is-Nil l1)) )
(assert (is-Nil l3) )
(check-sat)
