
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
(assert (and (= l3 Nil) (= l3 Nil)) )
(assert (not (= l2 l3)) )
(assert (= l3 l0) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (or (= l0 l3) (= l0 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (is-Cons l2) (= l0 Nil)) )
(assert (is-Cons l0) )
(check-sat)
