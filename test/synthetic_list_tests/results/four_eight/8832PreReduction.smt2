
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
(assert (or (= l0 l2) (= l1 Nil) (= l1 l0)) )
(assert (not (is-Nil l3)) )
(assert (and (is-Cons l3) (= l1 Nil)) )
(assert (or (= l1 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (and (= l3 Nil) (is-Nil Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons l2) )
(assert (and (is-Cons Nil) (is-Nil Nil) (is-Nil l1) (is-Nil Nil)) )
(check-sat)
