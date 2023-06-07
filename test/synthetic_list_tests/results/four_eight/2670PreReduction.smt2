
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
(assert (and (is-Cons Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (and (= l2 Nil) (= l2 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (or (= l1 l2) (= l3 l1) (= l2 Nil)) )
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (not (= l3 Nil)) )
(assert (= l2 Nil) )
(assert (is-Nil Nil) )
(assert (or (= l2 l2) (is-Cons l2) (is-Cons l3)) )
(check-sat)
