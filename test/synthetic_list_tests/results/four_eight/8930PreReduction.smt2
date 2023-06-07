
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
(assert (or (is-Nil Nil) (is-Nil l1) (= l3 Nil)) )
(assert (and (= l1 l3) (= l2 Nil)) )
(assert (and (is-Cons l3) (= l2 l3) (= l2 l0) (is-Nil Nil)) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (and (= l1 Nil) (is-Nil l3)) )
(assert (and (is-Nil l1) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
