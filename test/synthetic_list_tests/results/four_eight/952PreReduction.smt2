
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
(assert (or (= l2 Nil) (= l0 l2) (= l2 Nil) (is-Nil Nil)) )
(assert (and (is-Nil l3) (= l1 l0)) )
(assert (is-Nil Nil) )
(assert (is-Cons l2) )
(assert (is-Nil Nil) )
(assert (or (is-Cons Nil) (= l2 l1)) )
(assert (not (= l1 Nil)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (= l2 l2) (= l1 l0)) )
(check-sat)
