
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
(assert (is-Cons Nil) )
(assert (= l2 Nil) )
(assert (and (is-Cons l3) (= l0 Nil) (= l2 Nil)) )
(assert (or (is-Nil l1) (= l0 Nil) (= l2 Nil)) )
(assert (= l2 l2) )
(assert (is-Cons Nil) )
(assert (or (= l1 l1) (is-Nil Nil) (= l3 Nil) (= l0 Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
