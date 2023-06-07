
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
(assert (and (= l0 l3) (= l2 Nil) (= l3 l0) (is-Nil Nil)) )
(assert (not (is-Nil l0)) )
(assert (= l3 l3) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (not (is-Nil l0)) )
(assert (or (= l0 l3) (is-Cons Nil) (= l0 Nil)) )
(check-sat)
