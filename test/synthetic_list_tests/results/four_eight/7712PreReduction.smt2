
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
(assert (or (= l3 l0) (= l3 Nil) (= l3 l3)) )
(assert (not (= l1 Nil)) )
(assert (or (= l2 l0) (= l2 Nil) (= l0 Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil)) )
(assert (= l2 l2) )
(assert (is-Cons Nil) )
(assert (and (= l1 l1) (is-Cons l3)) )
(assert (or (= l0 Nil) (= l2 Nil) (is-Nil Nil) (= l2 Nil)) )
(check-sat)
