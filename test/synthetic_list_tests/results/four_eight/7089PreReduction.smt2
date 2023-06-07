
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
(assert (and (= l1 l2) (= l0 l2) (= l2 Nil) (= l1 Nil)) )
(assert (and (is-Nil Nil) (is-Cons l2) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons l0) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (is-Cons l3) (= l3 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (= l2 Nil) )
(check-sat)
