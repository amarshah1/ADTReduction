
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
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (is-Cons l3) (= l0 Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (or (= l0 l3) (is-Nil Nil) (is-Nil Nil) (= l0 l2)) )
(assert (not (is-Nil l3)) )
(assert (is-Cons l1) )
(check-sat)
