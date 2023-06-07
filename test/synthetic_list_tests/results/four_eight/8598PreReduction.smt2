
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
(assert (= l1 l1) )
(assert (and (is-Nil Nil) (= l0 Nil)) )
(assert (and (= l1 Nil) (is-Cons l2) (is-Nil Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Nil l1)) )
(assert (not (= l2 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
