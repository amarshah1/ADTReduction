
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
(assert (and (= l2 Nil) (= l0 l3)) )
(assert (is-Cons l2) )
(assert (is-Cons Nil) )
(assert (or (= l2 l1) (= l3 Nil)) )
(assert (not (= l1 Nil)) )
(assert (and (is-Nil Nil) (= l3 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (is-Cons l0) )
(assert (or (= l1 l0) (is-Cons Nil) (= l2 Nil)) )
(check-sat)
