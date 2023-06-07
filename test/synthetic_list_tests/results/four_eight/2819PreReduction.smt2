
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
(assert (or (= l1 Nil) (= l0 Nil) (= l3 l2) (= l1 Nil)) )
(assert (or (= l2 Nil) (= l2 Nil) (is-Cons l1)) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l3 Nil) (= l1 Nil)) )
(assert (= l0 Nil) )
(assert (not (= l0 Nil)) )
(assert (and (is-Nil l0) (is-Nil Nil)) )
(assert (and (is-Cons Nil) (= l3 l2) (= l2 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
