
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
(assert (not (= l0 l3)) )
(assert (not (is-Nil Nil)) )
(assert (and (= l1 l3) (is-Cons l0) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (= l2 Nil) )
(assert (not (= l0 Nil)) )
(assert (and (is-Cons l2) (= l1 Nil)) )
(check-sat)
