
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
(assert (or (= l3 Nil) (= l2 l3) (is-Nil Nil)) )
(assert (and (= l3 Nil) (is-Nil Nil)) )
(assert (is-Cons l0) )
(assert (or (= l1 l2) (= l2 Nil) (= l3 Nil) (= l1 l2)) )
(assert (= l2 l0) )
(assert (= l2 Nil) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(check-sat)