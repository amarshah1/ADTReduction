
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
(assert (and (is-Cons l0) (is-Nil Nil) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (and (= l2 l1) (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l1 l1) (= l3 l1) (= l3 Nil)) )
(check-sat)
