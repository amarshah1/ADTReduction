
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
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (= l3 l2) )
(assert (and (= l2 l1) (= l1 l2) (= l2 Nil)) )
(assert (not (is-Cons l3)) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(check-sat)
