
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
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (or (= l3 l2) (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (is-Nil Nil) (is-Cons l1)) )
(check-sat)
