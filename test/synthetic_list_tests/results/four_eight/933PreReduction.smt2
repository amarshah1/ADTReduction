
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
(assert (or (= l3 Nil) (is-Cons Nil)) )
(assert (not (= l3 Nil)) )
(assert (or (= l0 Nil) (= l0 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l2 l2) (= l1 Nil)) )
(assert (and (= l0 Nil) (= l1 l0) (= l0 l3) (= l1 Nil)) )
(assert (or (is-Cons l3) (is-Cons Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(check-sat)
