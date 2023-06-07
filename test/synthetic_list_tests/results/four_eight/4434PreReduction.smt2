
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
(assert (not (= l0 l0)) )
(assert (or (= l2 l0) (= l1 Nil) (= l1 l2)) )
(assert (or (= l3 Nil) (is-Cons l0) (is-Cons Nil)) )
(assert (not (is-Cons l2)) )
(assert (or (= l0 Nil) (= l3 l2) (= l2 l3) (= l0 Nil)) )
(assert (or (= l1 Nil) (is-Nil Nil) (= l3 l0) (= l1 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
