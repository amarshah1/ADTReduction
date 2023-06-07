
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
(assert (and (is-Cons Nil) (is-Nil Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (is-Cons l1) (= l1 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (or (= l3 Nil) (= l2 Nil) (is-Cons Nil) (is-Cons Nil)) )
(check-sat)
