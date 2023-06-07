
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
(assert (and (= l0 l1) (is-Nil Nil)) )
(assert (not (is-Nil Nil)) )
(assert (= l2 Nil) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Cons Nil) (= l2 l1) (= l1 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (not (= l2 l3)) )
(assert (not (is-Cons l2)) )
(check-sat)
