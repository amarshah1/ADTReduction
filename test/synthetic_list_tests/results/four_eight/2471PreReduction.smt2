
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
(assert (not (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (= l0 Nil)) )
(assert (and (= l0 Nil) (= l0 l0) (is-Nil Nil) (= l1 l3)) )
(assert (or (is-Cons l2) (= l2 Nil) (= l2 l3) (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (= l2 Nil) )
(check-sat)
