
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
(assert (and (= l2 Nil) (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (= l2 l1) )
(assert (not (is-Cons Nil)) )
(assert (= l3 l3) )
(assert (not (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (or (is-Nil Nil) (is-Cons l2) (is-Nil Nil)) )
(check-sat)
