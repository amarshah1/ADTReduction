
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
(assert (not (= l3 Nil)) )
(assert (= l0 Nil) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(assert (= l3 l1) )
(assert (and (= l0 l3) (is-Cons Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (is-Nil l0) )
(assert (and (= l2 l0) (is-Cons Nil) (= l3 l3)) )
(check-sat)
