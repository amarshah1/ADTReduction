
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
(assert (or (= l0 Nil) (= l3 l2) (= l1 Nil) (is-Cons l3)) )
(assert (or (= l3 Nil) (= l1 l2) (= l0 l1)) )
(assert (is-Nil Nil) )
(assert (not (is-Cons Nil)) )
(assert (or (= l0 Nil) (is-Nil Nil)) )
(assert (or (= l2 Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (= l2 l2) (is-Cons Nil)) )
(assert (or (= l0 Nil) (is-Cons Nil)) )
(check-sat)
