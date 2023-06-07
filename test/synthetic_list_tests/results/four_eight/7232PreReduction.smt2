
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
(assert (not (= l1 Nil)) )
(assert (and (is-Cons Nil) (= l0 l2) (is-Cons Nil) (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (= l0 Nil) )
(assert (and (= l2 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l0 Nil)) )
(check-sat)
