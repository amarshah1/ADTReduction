
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
(assert (and (= l0 Nil) (= l0 l0) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Cons l2) )
(assert (and (= l0 Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (= l3 Nil) )
(assert (= l0 Nil) )
(assert (= l3 Nil) )
(assert (not (is-Nil Nil)) )
(check-sat)