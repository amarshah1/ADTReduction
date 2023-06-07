
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
(assert (is-Nil l0) )
(assert (or (is-Nil Nil) (= l3 Nil) (is-Nil Nil)) )
(assert (and (= l1 l1) (= l0 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l1 Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons l0) )
(assert (and (is-Cons Nil) (= l0 l3) (is-Nil l1)) )
(check-sat)
