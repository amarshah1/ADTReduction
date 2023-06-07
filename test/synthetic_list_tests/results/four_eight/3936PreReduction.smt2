
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
(assert (and (is-Cons Nil) (= l0 l1) (= l3 Nil) (= l2 l2)) )
(assert (is-Cons Nil) )
(assert (is-Nil l1) )
(assert (not (= l0 Nil)) )
(assert (and (= l0 l2) (= l1 l2) (= l2 l0) (= l3 l2)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(check-sat)
