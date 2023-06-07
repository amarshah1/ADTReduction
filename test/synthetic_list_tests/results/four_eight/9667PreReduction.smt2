
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
(assert (is-Cons Nil) )
(assert (and (= l2 l1) (is-Cons l1) (= l1 Nil) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (is-Nil Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (or (= l0 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)
