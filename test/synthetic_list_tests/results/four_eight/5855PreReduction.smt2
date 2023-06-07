
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
(assert (= l3 Nil) )
(assert (not (= l1 Nil)) )
(assert (or (is-Nil Nil) (is-Cons l2)) )
(assert (is-Nil l0) )
(assert (or (= l1 Nil) (= l0 Nil) (is-Nil l1) (= l2 l1)) )
(assert (and (= l2 l0) (is-Cons Nil)) )
(assert (is-Nil l0) )
(assert (not (= l2 l3)) )
(check-sat)
