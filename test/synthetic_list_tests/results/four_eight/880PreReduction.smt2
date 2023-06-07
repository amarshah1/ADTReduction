
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
(assert (or (= l0 l0) (= l3 l1) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (= l2 l1) )
(assert (= l1 Nil) )
(assert (or (= l1 Nil) (= l0 l2) (= l2 Nil)) )
(assert (not (is-Cons l2)) )
(assert (= l2 l2) )
(assert (not (is-Cons l2)) )
(check-sat)
