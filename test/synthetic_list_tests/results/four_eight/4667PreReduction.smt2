
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
(assert (= l0 l0) )
(assert (is-Nil l0) )
(assert (= l1 l3) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (not (= l3 l0)) )
(assert (or (is-Cons Nil) (= l0 l1) (is-Cons Nil)) )
(check-sat)
