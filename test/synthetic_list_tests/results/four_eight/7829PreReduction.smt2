
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
(assert (= l0 l0) )
(assert (or (is-Nil Nil) (= l2 l2) (is-Nil Nil) (= l0 Nil)) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l1 Nil) (= l0 l0) (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)
