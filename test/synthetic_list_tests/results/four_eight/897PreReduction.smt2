
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
(assert (not (is-Cons l2)) )
(assert (and (= l2 l2) (is-Nil Nil) (= l1 l3) (is-Cons Nil)) )
(assert (and (= l2 l0) (= l3 Nil)) )
(assert (or (= l1 l2) (= l3 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (and (= l0 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (is-Nil l2)) )
(assert (and (is-Nil Nil) (is-Nil l2) (= l3 Nil)) )
(check-sat)