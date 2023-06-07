
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
(assert (is-Nil l2) )
(assert (not (= l1 Nil)) )
(assert (and (= l1 l1) (= l3 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil l0) (is-Nil Nil) (= l3 l2) (is-Cons Nil)) )
(assert (= l1 l2) )
(assert (and (is-Nil Nil) (is-Cons l2)) )
(assert (= l2 Nil) )
(check-sat)
