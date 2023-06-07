
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
(assert (not (= l3 l0)) )
(assert (and (is-Nil l2) (= l1 Nil) (= l1 l1)) )
(assert (is-Cons Nil) )
(assert (= l0 l0) )
(assert (not (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (= l0 Nil)) )
(assert (or (is-Cons Nil) (= l1 Nil) (= l3 l3)) )
(check-sat)
