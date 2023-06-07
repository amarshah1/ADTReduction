
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
(assert (= l2 Nil) )
(assert (or (= l3 Nil) (is-Nil Nil) (= l1 l1)) )
(assert (is-Nil Nil) )
(assert (not (= l2 Nil)) )
(assert (and (is-Nil l1) (= l2 Nil) (is-Nil Nil) (= l0 l3)) )
(assert (or (= l2 Nil) (= l2 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l2 Nil)) )
(check-sat)