
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
(assert (is-Cons l1) )
(assert (= l2 l0) )
(assert (is-Cons Nil) )
(assert (not (is-Cons l1)) )
(assert (and (is-Nil Nil) (= l0 l0) (is-Nil Nil)) )
(assert (and (= l0 Nil) (= l2 Nil) (= l2 l2) (is-Cons Nil)) )
(assert (= l1 l2) )
(assert (and (is-Nil Nil) (= l3 l2)) )
(check-sat)
