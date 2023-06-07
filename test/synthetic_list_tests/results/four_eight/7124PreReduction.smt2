
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
(assert (and (= l1 l0) (= l3 l3) (is-Cons Nil)) )
(assert (and (= l2 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (and (= l2 Nil) (is-Cons l2) (is-Cons l1) (is-Cons Nil)) )
(assert (not (is-Nil Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Cons l3) )
(check-sat)
