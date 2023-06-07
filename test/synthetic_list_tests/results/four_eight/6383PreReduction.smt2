
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
(assert (and (= l0 Nil) (is-Nil Nil) (= l0 Nil) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (= l3 l3) )
(assert (is-Cons l2) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (= l1 Nil)) )
(assert (not (is-Nil l0)) )
(check-sat)