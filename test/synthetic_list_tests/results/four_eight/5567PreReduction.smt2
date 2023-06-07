
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
(assert (= l3 l1) )
(assert (not (= l2 l2)) )
(assert (is-Nil l3) )
(assert (is-Cons l1) )
(assert (is-Nil Nil) )
(assert (or (= l0 l1) (= l3 l2) (= l2 Nil)) )
(assert (or (= l1 Nil) (= l2 l0) (is-Nil Nil) (is-Cons Nil)) )
(assert (or (= l2 l1) (is-Nil l2)) )
(check-sat)
