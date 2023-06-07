
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
(assert (and (= l2 l0) (= l1 l3) (= l1 Nil) (= l0 Nil)) )
(assert (or (is-Nil Nil) (= l0 l0)) )
(assert (not (is-Nil l3)) )
(assert (is-Nil Nil) )
(assert (= l2 l3) )
(assert (is-Cons Nil) )
(assert (is-Cons l1) )
(assert (or (= l1 Nil) (= l1 Nil)) )
(check-sat)
