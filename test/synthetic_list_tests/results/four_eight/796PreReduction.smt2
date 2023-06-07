
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
(assert (and (= l0 Nil) (is-Cons l2) (= l0 Nil) (= l1 Nil)) )
(assert (or (= l1 l0) (is-Nil Nil) (= l2 Nil) (= l3 l2)) )
(assert (= l0 Nil) )
(assert (not (= l0 l0)) )
(assert (not (is-Cons l0)) )
(assert (and (= l2 Nil) (= l1 Nil) (is-Cons l3)) )
(assert (or (= l2 Nil) (= l3 l2) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(check-sat)
