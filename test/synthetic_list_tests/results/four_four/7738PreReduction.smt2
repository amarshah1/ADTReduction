
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
(assert (or (= l0 l2) (is-Cons Nil)) )
(assert (or (= l3 l3) (= l2 l2)) )
(assert (or (is-Nil Nil) (= l0 Nil) (= l2 Nil) (= l2 Nil)) )
(assert (not (= l3 Nil)) )
(check-sat)
