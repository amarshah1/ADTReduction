
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
(assert (= l1 Nil) )
(assert (and (= l1 Nil) (is-Cons Nil) (is-Cons Nil) (= l2 l0)) )
(assert (or (is-Nil Nil) (= l1 Nil) (= l2 l2) (is-Nil Nil)) )
(assert (or (= l0 l0) (= l2 Nil) (= l2 Nil)) )
(check-sat)