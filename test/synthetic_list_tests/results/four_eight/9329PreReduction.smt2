
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
(assert (and (= l0 l1) (= l3 l1) (= l1 Nil)) )
(assert (= l3 Nil) )
(assert (not (= l2 Nil)) )
(assert (not (= l0 l0)) )
(assert (is-Nil Nil) )
(assert (and (= l1 Nil) (= l1 Nil) (is-Nil l0) (= l1 Nil)) )
(assert (= l1 Nil) )
(assert (or (is-Cons Nil) (is-Nil Nil) (is-Nil l3)) )
(check-sat)
