
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
(assert (or (is-Nil Nil) (= l2 Nil) (= l1 Nil) (is-Nil Nil)) )
(assert (and (= l0 Nil) (= l2 l2) (= l3 l2) (is-Nil l2)) )
(assert (or (= l0 l2) (is-Cons l3)) )
(assert (or (is-Cons Nil) (= l0 Nil) (is-Nil l1)) )
(assert (is-Cons l3) )
(assert (and (= l3 Nil) (= l2 Nil)) )
(assert (= l1 Nil) )
(assert (not (is-Nil Nil)) )
(check-sat)
