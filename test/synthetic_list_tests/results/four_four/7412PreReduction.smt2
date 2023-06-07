
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
(assert (and (= l0 l2) (= l0 Nil) (= l0 Nil)) )
(assert (and (= l2 Nil) (= l1 Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (and (is-Nil l0) (= l2 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
