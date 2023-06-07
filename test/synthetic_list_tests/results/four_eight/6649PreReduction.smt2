
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
(assert (is-Cons l3) )
(assert (and (= l1 l0) (is-Cons Nil) (= l1 l3)) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l2) )
(assert (= l2 l3) )
(assert (not (= l1 Nil)) )
(assert (and (= l0 l2) (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
