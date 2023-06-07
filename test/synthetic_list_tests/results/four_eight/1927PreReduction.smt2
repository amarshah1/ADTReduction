
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
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (and (= l1 l2) (is-Nil Nil) (= l0 l3) (= l2 Nil)) )
(assert (= l2 l0) )
(assert (= l2 l0) )
(assert (or (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
