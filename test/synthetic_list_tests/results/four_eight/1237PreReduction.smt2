
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
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (= l2 Nil) )
(assert (and (= l0 l2) (is-Nil Nil) (= l1 Nil)) )
(assert (or (is-Nil Nil) (= l3 Nil)) )
(assert (or (is-Nil l3) (= l2 Nil)) )
(assert (or (is-Cons l2) (= l3 l3)) )
(assert (not (is-Nil l1)) )
(check-sat)