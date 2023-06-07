
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
(assert (and (= l0 Nil) (is-Cons l3) (is-Cons Nil) (= l2 l3)) )
(assert (is-Nil l2) )
(assert (or (= l0 l3) (= l3 Nil)) )
(assert (is-Nil l2) )
(assert (= l3 Nil) )
(assert (or (= l0 l0) (= l2 Nil) (is-Nil Nil)) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(check-sat)
