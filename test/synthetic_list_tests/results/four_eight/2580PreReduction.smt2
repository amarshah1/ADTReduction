
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
(assert (and (is-Nil Nil) (= l1 l1) (= l0 l2)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l1 l0) (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (or (is-Cons Nil) (is-Cons l1) (is-Nil Nil)) )
(check-sat)
