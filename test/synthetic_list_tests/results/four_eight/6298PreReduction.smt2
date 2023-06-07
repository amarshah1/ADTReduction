
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
(assert (and (= l0 l3) (is-Nil Nil) (= l2 l0)) )
(assert (is-Nil Nil) )
(assert (not (is-Nil l0)) )
(assert (is-Cons l1) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (is-Nil l2) (= l1 Nil) (is-Nil Nil)) )
(assert (and (is-Nil Nil) (is-Cons Nil) (= l0 l2)) )
(check-sat)
