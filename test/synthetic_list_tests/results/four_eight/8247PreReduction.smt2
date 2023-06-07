
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
(assert (not (is-Nil Nil)) )
(assert (and (= l2 Nil) (= l3 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (not (= l1 l1)) )
(assert (not (= l2 l0)) )
(check-sat)
