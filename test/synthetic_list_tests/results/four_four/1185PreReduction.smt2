
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
(assert (and (= l1 l0) (is-Nil l1) (is-Nil Nil)) )
(assert (= l0 Nil) )
(assert (and (= l2 l0) (= l2 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (or (= l2 l1) (= l0 Nil) (= l2 Nil)) )
(check-sat)
