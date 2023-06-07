
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
(assert (or (= l1 l1) (= l0 l0) (is-Nil Nil) (is-Nil Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons l1) )
(assert (= l1 l1) )
(assert (and (= l3 l0) (= l3 l1) (= l2 Nil) (= l2 l1)) )
(assert (or (= l0 Nil) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (and (= l0 Nil) (is-Nil l0)) )
(check-sat)
