
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
(assert (or (is-Nil Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (= l3 l0) )
(assert (not (= l1 l1)) )
(assert (is-Nil Nil) )
(assert (or (= l0 l1) (= l1 Nil)) )
(assert (is-Cons l2) )
(assert (and (= l0 Nil) (is-Cons Nil) (= l1 Nil) (= l2 l3)) )
(assert (not (= l0 Nil)) )
(check-sat)
