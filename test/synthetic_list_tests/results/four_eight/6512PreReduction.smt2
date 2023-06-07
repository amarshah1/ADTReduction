
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
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (= l2 Nil) (= l3 l2) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l3) )
(assert (or (= l1 Nil) (is-Nil Nil)) )
(assert (not (is-Nil Nil)) )
(assert (and (is-Cons Nil) (= l0 l0) (= l2 l0)) )
(assert (or (is-Nil l2) (is-Cons Nil) (is-Nil Nil)) )
(check-sat)
