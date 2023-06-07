
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
(assert (= l2 Nil) )
(assert (and (is-Cons Nil) (= l0 l3) (= l1 l0) (is-Nil Nil)) )
(assert (= l2 Nil) )
(assert (and (= l0 l0) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l3 Nil) (is-Cons l0)) )
(assert (= l2 Nil) )
(check-sat)
