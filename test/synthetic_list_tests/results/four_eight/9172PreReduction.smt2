
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
(assert (or (= l2 Nil) (is-Cons l0) (= l0 l3) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (not (is-Nil Nil)) )
(assert (and (= l1 l3) (is-Nil Nil) (= l0 l0) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (or (= l3 l1) (= l3 l2) (= l3 Nil)) )
(check-sat)
