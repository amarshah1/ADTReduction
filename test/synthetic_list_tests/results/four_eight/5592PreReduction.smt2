
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
(assert (or (is-Nil Nil) (= l2 Nil) (= l1 Nil)) )
(assert (not (is-Cons l1)) )
(assert (not (= l1 l2)) )
(assert (and (= l0 Nil) (= l3 Nil) (= l3 l2) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l0 l0) (= l3 Nil) (is-Nil Nil)) )
(assert (or (= l1 l1) (is-Cons Nil) (= l1 Nil) (= l2 l3)) )
(assert (= l0 Nil) )
(check-sat)
