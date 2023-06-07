
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
(assert (= l3 Nil) )
(assert (and (= l0 Nil) (= l3 Nil) (= l2 l2) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(assert (not (is-Cons l3)) )
(assert (or (= l3 l0) (is-Nil Nil) (is-Nil l0) (= l3 l2)) )
(assert (or (= l0 Nil) (= l1 Nil)) )
(check-sat)
