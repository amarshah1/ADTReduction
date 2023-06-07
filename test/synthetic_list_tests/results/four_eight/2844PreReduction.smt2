
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
(assert (and (= l1 Nil) (= l1 Nil) (is-Nil Nil) (= l0 l3)) )
(assert (or (is-Cons l1) (is-Nil Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (not (is-Cons l1)) )
(assert (and (= l2 l3) (is-Nil Nil) (is-Nil Nil) (= l1 l2)) )
(assert (and (= l3 Nil) (is-Cons l1) (= l0 l2) (is-Cons l0)) )
(assert (is-Nil Nil) )
(assert (or (= l3 Nil) (is-Nil Nil) (is-Cons l1)) )
(assert (or (= l3 Nil) (= l1 Nil) (= l1 Nil)) )
(check-sat)
