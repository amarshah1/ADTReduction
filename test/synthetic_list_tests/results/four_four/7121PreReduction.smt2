
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
(assert (and (= l3 Nil) (= l3 l2) (is-Nil Nil) (is-Nil Nil)) )
(assert (not (= l2 Nil)) )
(assert (and (= l0 Nil) (= l3 Nil) (= l3 Nil)) )
(check-sat)
