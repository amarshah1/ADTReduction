
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
(assert (not (= l3 Nil)) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l2 l0)) )
(assert (and (is-Nil Nil) (= l2 Nil) (= l0 l3) (is-Nil l1)) )
(assert (or (= l2 Nil) (is-Nil Nil) (is-Cons Nil) (= l2 l3)) )
(assert (= l3 Nil) )
(assert (or (= l3 l2) (is-Nil Nil) (= l2 l1)) )
(assert (or (is-Cons l3) (= l2 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(check-sat)
