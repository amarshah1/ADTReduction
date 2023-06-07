
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
(assert (not (is-Cons Nil)) )
(assert (and (= l2 l3) (= l0 Nil)) )
(assert (or (= l2 Nil) (is-Cons l1) (= l2 Nil) (is-Nil Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)