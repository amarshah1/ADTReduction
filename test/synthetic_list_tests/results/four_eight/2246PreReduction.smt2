
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
(assert (or (is-Nil Nil) (= l1 l3) (= l2 l0) (= l1 l2)) )
(assert (not (= l0 Nil)) )
(assert (and (= l0 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (and (= l1 Nil) (is-Nil l0) (is-Cons Nil)) )
(assert (not (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (= l3 Nil) )
(check-sat)
