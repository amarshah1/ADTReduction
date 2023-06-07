
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
(assert (is-Nil Nil) )
(assert (and (= l3 Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (= l0 Nil) )
(assert (or (= l3 l1) (is-Nil Nil) (= l1 l2) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (= l1 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)
