
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
(assert (or (is-Cons l3) (= l1 Nil) (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(assert (not (is-Nil Nil)) )
(assert (not (= l1 l3)) )
(check-sat)
