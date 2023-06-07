
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
(assert (or (is-Nil Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (is-Nil l0) )
(assert (is-Cons Nil) )
(assert (not (= l2 Nil)) )
(assert (and (= l2 Nil) (= l0 Nil) (is-Nil Nil) (is-Cons l2)) )
(assert (and (is-Cons Nil) (= l1 l3) (is-Nil Nil)) )
(assert (is-Cons l2) )
(assert (is-Nil Nil) )
(check-sat)
