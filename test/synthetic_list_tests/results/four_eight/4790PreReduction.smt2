
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
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Nil l3)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l0 Nil) (= l1 Nil) (= l1 Nil) (= l0 l0)) )
(assert (= l3 l3) )
(assert (= l0 Nil) )
(assert (is-Cons l1) )
(check-sat)
