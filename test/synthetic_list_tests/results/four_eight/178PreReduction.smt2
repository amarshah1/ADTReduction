
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
(assert (= l2 Nil) )
(assert (and (= l2 l2) (= l2 Nil)) )
(assert (not (is-Nil l3)) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (and (= l3 l0) (= l1 l1) (= l0 Nil)) )
(assert (and (is-Nil Nil) (is-Cons l1)) )
(check-sat)
