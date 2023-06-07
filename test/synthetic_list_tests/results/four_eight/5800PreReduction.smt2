
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
(assert (or (is-Cons Nil) (= l2 l1)) )
(assert (and (is-Nil Nil) (is-Cons Nil)) )
(assert (or (is-Cons l1) (= l2 Nil) (= l3 Nil)) )
(assert (or (is-Cons l1) (= l2 Nil) (= l1 Nil)) )
(assert (not (= l1 Nil)) )
(assert (or (= l1 l0) (= l3 l0) (is-Nil Nil)) )
(assert (not (= l0 Nil)) )
(assert (= l3 l0) )
(check-sat)
