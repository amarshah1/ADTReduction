
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
(assert (or (is-Cons Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (= l2 Nil) )
(assert (and (is-Cons l0) (is-Cons Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(assert (not (is-Cons l2)) )
(check-sat)
