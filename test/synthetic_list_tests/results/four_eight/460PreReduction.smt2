
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
(assert (is-Nil l1) )
(assert (is-Nil Nil) )
(assert (and (= l0 Nil) (is-Cons Nil) (is-Nil Nil) (= l2 l1)) )
(assert (is-Cons Nil) )
(assert (not (= l1 Nil)) )
(assert (and (= l0 Nil) (= l0 Nil)) )
(assert (not (= l0 l3)) )
(assert (is-Cons l2) )
(check-sat)