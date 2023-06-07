
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
(assert (is-Nil Nil) )
(assert (or (is-Nil l3) (= l1 Nil) (= l3 Nil) (= l3 Nil)) )
(assert (is-Cons l3) )
(assert (and (= l2 l3) (= l3 l3)) )
(assert (or (= l2 l0) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (= l2 Nil) )
(check-sat)