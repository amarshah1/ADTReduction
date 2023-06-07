
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
(assert (and (= l1 l3) (= l2 Nil) (= l1 Nil)) )
(assert (and (is-Cons l0) (is-Nil Nil) (is-Nil Nil)) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (or (= l0 Nil) (= l0 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (is-Nil l2) )
(assert (is-Cons Nil) )
(assert (not (is-Nil l2)) )
(assert (= l1 Nil) )
(check-sat)
