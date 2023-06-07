
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
(assert (not (= l1 l0)) )
(assert (and (= l1 Nil) (= l2 Nil) (is-Nil Nil) (= l3 l2)) )
(assert (and (= l1 l1) (= l0 Nil) (= l0 Nil)) )
(assert (= l0 l0) )
(assert (or (is-Nil Nil) (= l1 Nil) (is-Cons Nil)) )
(assert (is-Cons l3) )
(assert (or (= l2 Nil) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
