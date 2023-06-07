
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
(assert (is-Cons Nil) )
(assert (not (is-Nil l0)) )
(assert (is-Nil l2) )
(assert (and (= l2 l2) (is-Nil Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (and (= l3 l0) (= l3 Nil)) )
(assert (or (= l3 Nil) (= l2 Nil) (is-Nil Nil) (= l1 l1)) )
(assert (and (= l0 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (is-Cons l0) )
(check-sat)
