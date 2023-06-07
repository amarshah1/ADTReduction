
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
(assert (not (is-Nil Nil)) )
(assert (and (= l3 Nil) (is-Nil Nil)) )
(assert (is-Nil l3) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (is-Cons l3) (= l1 l0) (= l1 Nil)) )
(assert (not (is-Nil l0)) )
(assert (or (= l0 Nil) (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)
