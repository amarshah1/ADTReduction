
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
(assert (is-Nil l3) )
(assert (is-Cons l2) )
(assert (or (is-Nil Nil) (= l1 Nil) (= l0 Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (is-Nil l0) (= l0 l0) (is-Nil Nil) (is-Cons l3)) )
(assert (and (is-Cons Nil) (= l0 Nil) (= l0 l1)) )
(assert (not (= l1 Nil)) )
(assert (= l0 Nil) )
(check-sat)
