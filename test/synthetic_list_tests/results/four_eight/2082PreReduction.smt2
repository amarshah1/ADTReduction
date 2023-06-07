
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
(assert (or (= l1 Nil) (is-Cons l1) (= l0 l2)) )
(assert (= l1 Nil) )
(assert (not (is-Nil Nil)) )
(assert (and (= l0 l1) (is-Cons l3) (= l1 l3)) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (= l0 l0) )
(assert (or (is-Cons l2) (is-Cons Nil)) )
(check-sat)
