
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
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (is-Cons Nil)) )
(assert (and (is-Nil Nil) (= l0 l0) (= l1 l2)) )
(assert (or (= l2 Nil) (= l2 Nil) (= l3 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (is-Cons l2) (= l2 Nil) (is-Nil Nil)) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
