
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
(assert (and (= l1 l0) (is-Nil Nil) (is-Nil Nil) (= l3 l1)) )
(assert (= l0 Nil) )
(assert (is-Cons l2) )
(assert (is-Cons Nil) )
(assert (is-Cons l1) )
(assert (and (is-Cons Nil) (= l3 l2) (is-Cons l0) (= l1 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (and (= l0 Nil) (= l0 l1)) )
(check-sat)
