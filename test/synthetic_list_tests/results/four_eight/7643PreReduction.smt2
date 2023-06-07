
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
(assert (not (= l3 Nil)) )
(assert (and (is-Nil Nil) (= l1 l0) (= l1 Nil) (= l3 l3)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (not (is-Cons l2)) )
(assert (is-Cons l1) )
(assert (is-Cons Nil) )
(check-sat)
