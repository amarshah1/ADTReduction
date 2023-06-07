
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
(assert (is-Nil l3) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (is-Nil Nil)) )
(assert (= l3 l0) )
(assert (and (= l2 l0) (= l1 l2) (is-Cons Nil)) )
(assert (and (= l0 Nil) (= l3 l2) (is-Nil l2)) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(check-sat)