
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
(assert (is-Nil Nil) )
(assert (not (is-Nil l1)) )
(assert (and (= l1 Nil) (is-Cons l2) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l1 l1) (= l0 Nil) (= l0 Nil) (is-Nil Nil)) )
(assert (and (is-Cons l2) (= l3 Nil)) )
(assert (or (= l1 l1) (= l2 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
