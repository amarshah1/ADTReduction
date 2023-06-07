
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
(assert (and (= l0 l3) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l1 l0) (is-Nil Nil) (= l0 Nil)) )
(assert (or (= l3 Nil) (is-Nil Nil) (= l3 l1)) )
(assert (or (= l1 Nil) (= l3 Nil)) )
(check-sat)
