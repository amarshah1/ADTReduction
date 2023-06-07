
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
(assert (and (= l0 l2) (= l1 Nil) (= l0 l3)) )
(assert (or (is-Nil Nil) (= l0 Nil) (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l3 Nil)) )
(assert (and (is-Cons Nil) (is-Cons l2) (is-Nil Nil) (= l0 l2)) )
(assert (is-Cons l0) )
(assert (not (= l3 l1)) )
(assert (is-Nil Nil) )
(check-sat)
