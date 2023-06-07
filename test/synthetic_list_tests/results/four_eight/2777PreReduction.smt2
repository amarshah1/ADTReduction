
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
(assert (not (= l3 Nil)) )
(assert (= l0 l0) )
(assert (or (is-Nil Nil) (is-Nil Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (not (= l2 l0)) )
(assert (and (= l3 Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (= l1 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l0 Nil) (= l2 Nil)) )
(check-sat)
