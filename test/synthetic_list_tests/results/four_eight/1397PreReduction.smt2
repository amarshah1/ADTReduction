
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
(assert (is-Cons l0) )
(assert (and (= l2 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (or (= l3 Nil) (= l0 l3)) )
(assert (and (= l2 l2) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons l2) (= l2 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (not (= l2 l2)) )
(assert (is-Nil Nil) )
(check-sat)
