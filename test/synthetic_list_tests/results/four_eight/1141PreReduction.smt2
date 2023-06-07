
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
(assert (or (= l2 Nil) (= l3 Nil) (is-Nil l3)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l2 l1) (= l3 l0) (is-Cons Nil)) )
(assert (and (= l1 Nil) (is-Nil Nil)) )
(assert (= l1 Nil) )
(assert (and (is-Nil l1) (is-Nil Nil) (= l0 Nil) (= l3 l0)) )
(assert (not (is-Cons l2)) )
(assert (is-Nil Nil) )
(check-sat)
