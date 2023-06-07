
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
(assert (not (is-Nil Nil)) )
(assert (not (= l3 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (or (= l3 l3) (= l1 l0) (= l0 l1)) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (or (is-Nil l2) (= l0 l0) (is-Cons l3)) )
(assert (= l0 Nil) )
(check-sat)
