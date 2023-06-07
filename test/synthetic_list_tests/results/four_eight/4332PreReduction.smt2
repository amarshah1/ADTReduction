
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
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (not (is-Cons Nil)) )
(assert (or (is-Nil Nil) (is-Nil l2) (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (is-Nil Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (or (is-Cons Nil) (= l2 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (is-Cons l0)) )
(check-sat)
