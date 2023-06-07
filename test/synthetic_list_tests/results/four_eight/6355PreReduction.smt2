
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
(assert (= l1 Nil) )
(assert (not (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (not (= l0 Nil)) )
(assert (= l2 l1) )
(assert (is-Cons l2) )
(assert (and (is-Nil Nil) (= l1 l3) (is-Nil l1) (= l2 Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)
