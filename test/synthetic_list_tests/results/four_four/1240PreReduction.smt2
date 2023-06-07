
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
(assert (or (is-Cons Nil) (is-Nil Nil)) )
(assert (or (is-Cons l2) (= l1 Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (or (= l0 Nil) (= l0 Nil) (= l1 Nil) (is-Cons Nil)) )
(check-sat)