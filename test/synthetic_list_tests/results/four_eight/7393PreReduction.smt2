
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
(assert (and (= l3 Nil) (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (and (= l3 l3) (= l0 l1) (= l1 l3)) )
(assert (= l3 Nil) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (is-Cons l0) (= l1 l1) (= l3 l1)) )
(assert (or (is-Cons Nil) (= l2 l0) (= l3 Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)
