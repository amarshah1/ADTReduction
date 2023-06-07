
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
(assert (or (= l1 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (and (= l1 l2) (= l0 Nil)) )
(assert (is-Cons l3) )
(assert (or (is-Nil l0) (= l2 Nil) (= l3 l2)) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (is-Cons Nil) (= l2 l3)) )
(assert (= l3 Nil) )
(check-sat)
