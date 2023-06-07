
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
(assert (is-Nil l0) )
(assert (or (is-Nil Nil) (is-Cons Nil)) )
(assert (and (= l0 Nil) (= l1 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (is-Cons l3) )
(assert (is-Nil Nil) )
(assert (or (= l2 l0) (= l3 Nil) (= l2 Nil)) )
(assert (and (= l2 Nil) (= l0 Nil) (is-Cons l3) (= l2 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
