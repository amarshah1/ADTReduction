
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
(assert (and (= l2 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (is-Cons l2) )
(assert (and (= l2 Nil) (is-Nil Nil)) )
(assert (or (= l3 Nil) (is-Nil Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l3 Nil)) )
(assert (= l0 l0) )
(assert (or (= l2 Nil) (= l1 Nil) (= l3 Nil) (is-Cons Nil)) )
(check-sat)
