
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
(assert (or (is-Cons l2) (is-Nil Nil)) )
(assert (or (= l0 l0) (= l1 Nil) (= l3 Nil)) )
(assert (is-Cons l2) )
(assert (and (= l1 l3) (is-Cons l2) (= l2 Nil) (is-Cons Nil)) )
(assert (not (= l2 l2)) )
(assert (not (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(check-sat)
