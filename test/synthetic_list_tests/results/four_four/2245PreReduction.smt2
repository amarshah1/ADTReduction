
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
(assert (or (is-Nil l2) (= l3 Nil) (= l0 Nil) (= l3 l1)) )
(assert (and (= l0 Nil) (is-Nil Nil) (= l2 l0) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l1 l1) (= l3 Nil)) )
(check-sat)
