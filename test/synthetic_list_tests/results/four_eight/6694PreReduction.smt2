
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
(assert (and (= l3 Nil) (= l0 Nil)) )
(assert (or (= l1 Nil) (= l2 Nil) (= l1 l1) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l2) )
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(assert (and (= l2 Nil) (= l1 l2) (is-Cons l1)) )
(assert (or (= l1 l0) (= l1 Nil) (is-Nil Nil) (= l1 l3)) )
(check-sat)
