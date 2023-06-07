
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
(assert (or (is-Cons Nil) (= l0 Nil) (= l3 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (= l1 l0) )
(assert (not (is-Cons l3)) )
(assert (is-Nil Nil) )
(assert (and (= l3 l0) (= l0 Nil) (= l1 Nil) (= l1 l2)) )
(assert (and (is-Nil l2) (is-Cons Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (and (= l0 Nil) (is-Nil Nil) (= l3 Nil)) )
(check-sat)
