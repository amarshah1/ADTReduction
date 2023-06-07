
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
(assert (or (= l3 l0) (= l3 Nil) (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (not (= l3 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (= l1 Nil) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l2 Nil) (is-Nil Nil)) )
(check-sat)
