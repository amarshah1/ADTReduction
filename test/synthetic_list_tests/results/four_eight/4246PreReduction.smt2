
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
(assert (not (= l2 Nil)) )
(assert (or (= l1 Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l1 l1) (is-Nil Nil)) )
(assert (and (is-Cons Nil) (= l2 l3)) )
(assert (is-Nil Nil) )
(assert (is-Nil l1) )
(assert (not (is-Cons l3)) )
(check-sat)
