
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
(assert (or (is-Cons l3) (is-Nil Nil) (= l2 l0) (= l2 Nil)) )
(assert (or (= l1 Nil) (= l0 Nil) (= l1 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (not (= l2 Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l0 l3)) )
(assert (is-Cons l2) )
(check-sat)