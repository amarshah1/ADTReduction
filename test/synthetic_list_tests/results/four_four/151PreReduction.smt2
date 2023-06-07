
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
(assert (and (is-Cons l3) (is-Cons Nil) (= l0 Nil)) )
(assert (and (= l3 Nil) (is-Cons Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (not (is-Cons l0)) )
(check-sat)
