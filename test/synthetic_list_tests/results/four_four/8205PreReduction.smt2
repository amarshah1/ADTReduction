
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
(assert (and (= l2 Nil) (= l0 Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (= l1 l2) (= l1 Nil) (= l0 l1)) )
(assert (or (= l1 l0) (= l1 Nil)) )
(check-sat)
