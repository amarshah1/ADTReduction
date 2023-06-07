
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
(assert (= l1 Nil) )
(assert (and (is-Cons l0) (= l3 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l1 l1) (= l1 l2) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Nil Nil)) )
(assert (and (is-Nil Nil) (= l2 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
