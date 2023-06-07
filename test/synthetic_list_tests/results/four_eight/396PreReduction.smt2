
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
(assert (= l3 l1) )
(assert (is-Cons l1) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons l2) )
(assert (= l1 Nil) )
(assert (and (= l3 l0) (is-Nil Nil) (is-Cons Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l1 l3) (is-Nil Nil)) )
(assert (not (= l1 Nil)) )
(check-sat)
