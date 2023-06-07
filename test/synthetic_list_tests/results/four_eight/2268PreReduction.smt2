
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
(assert (not (is-Nil l0)) )
(assert (or (is-Cons l1) (= l0 l2) (is-Cons Nil) (= l0 Nil)) )
(assert (not (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (not (= l0 l2)) )
(assert (is-Nil Nil) )
(assert (or (= l2 Nil) (= l0 Nil) (= l2 l3)) )
(assert (or (= l1 Nil) (is-Nil Nil) (is-Cons l0)) )
(check-sat)
