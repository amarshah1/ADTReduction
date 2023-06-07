
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
(assert (and (is-Cons Nil) (= l1 Nil) (= l1 l0) (= l1 Nil)) )
(assert (and (is-Cons Nil) (= l3 l0) (= l1 l3) (is-Cons Nil)) )
(assert (and (= l3 Nil) (is-Cons l2)) )
(assert (is-Nil Nil) )
(assert (not (is-Cons l3)) )
(assert (not (is-Nil Nil)) )
(assert (not (= l2 Nil)) )
(assert (or (is-Nil Nil) (is-Cons l2) (is-Nil Nil)) )
(check-sat)
