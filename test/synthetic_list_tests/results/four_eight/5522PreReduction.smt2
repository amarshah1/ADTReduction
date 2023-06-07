
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
(assert (and (= l2 Nil) (is-Cons l3) (= l1 l0) (= l1 Nil)) )
(assert (or (= l0 l2) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Cons l0) (= l1 Nil) (= l0 Nil)) )
(assert (not (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (not (= l1 l3)) )
(assert (not (is-Nil Nil)) )
(check-sat)
