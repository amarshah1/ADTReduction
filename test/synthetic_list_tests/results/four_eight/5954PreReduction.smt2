
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
(assert (not (is-Nil Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (= l2 l0) )
(assert (and (= l1 Nil) (= l1 l2) (= l0 l3) (is-Cons l2)) )
(assert (is-Nil Nil) )
(assert (= l3 Nil) )
(assert (is-Nil l1) )
(check-sat)
