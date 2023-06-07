
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
(assert (or (is-Cons l1) (= l1 Nil) (= l1 l2)) )
(assert (is-Cons l2) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (= l2 Nil) (is-Cons Nil) (= l0 l0)) )
(assert (not (= l0 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (and (= l3 l0) (= l2 Nil) (is-Nil Nil)) )
(assert (or (is-Cons l1) (is-Cons Nil) (= l2 l3)) )
(check-sat)
