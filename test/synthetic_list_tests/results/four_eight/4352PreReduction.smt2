
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
(assert (= l1 Nil) )
(assert (not (is-Nil Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (= l1 l1) (is-Cons Nil) (= l0 Nil)) )
(assert (is-Cons l0) )
(assert (not (is-Nil Nil)) )
(assert (not (= l3 Nil)) )
(assert (is-Nil l1) )
(check-sat)
