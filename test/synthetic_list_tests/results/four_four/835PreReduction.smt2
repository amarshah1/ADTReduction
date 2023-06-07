
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
(assert (or (= l0 l3) (is-Cons l3) (is-Nil Nil)) )
(assert (or (= l2 l2) (is-Nil Nil) (is-Cons Nil) (= l3 Nil)) )
(assert (and (is-Nil Nil) (= l3 Nil) (= l0 l3) (= l2 Nil)) )
(assert (not (= l3 l3)) )
(check-sat)
