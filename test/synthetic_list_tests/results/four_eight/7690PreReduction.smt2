
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
(assert (is-Nil l3) )
(assert (is-Cons l2) )
(assert (and (= l0 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l2 l3)) )
(assert (is-Nil Nil) )
(assert (and (= l3 Nil) (is-Nil l1) (= l0 l0) (= l1 l1)) )
(assert (= l2 Nil) )
(check-sat)
