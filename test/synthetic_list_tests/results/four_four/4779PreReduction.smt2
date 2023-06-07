
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
(assert (or (= l1 Nil) (= l1 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l0 l1)) )
(assert (is-Cons Nil) )
(assert (and (= l1 l2) (= l0 l3) (= l1 l0)) )
(check-sat)
