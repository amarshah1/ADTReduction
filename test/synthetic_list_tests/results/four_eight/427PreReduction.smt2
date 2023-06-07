
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
(assert (and (= l1 Nil) (= l1 l0) (is-Cons Nil)) )
(assert (= l1 l2) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (= l2 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
