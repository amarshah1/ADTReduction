
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
(assert (not (is-Cons Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l0 l3)) )
(assert (and (= l2 Nil) (= l2 l2) (= l0 Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l2 Nil)) )
(check-sat)