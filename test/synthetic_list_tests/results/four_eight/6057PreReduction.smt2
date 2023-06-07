
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
(assert (= l0 Nil) )
(assert (= l2 Nil) )
(assert (and (= l3 l1) (= l3 Nil) (is-Nil l0) (is-Cons Nil)) )
(assert (and (= l0 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (or (is-Nil Nil) (is-Cons Nil)) )
(assert (not (is-Nil Nil)) )
(assert (or (= l0 Nil) (is-Nil l0) (= l2 Nil)) )
(check-sat)
