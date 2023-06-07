
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
(assert (not (= l0 Nil)) )
(assert (not (= l0 l3)) )
(assert (or (= l1 l2) (= l2 Nil) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (or (is-Nil l2) (= l0 l2) (= l1 l3) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l2 Nil) (= l1 Nil) (= l3 Nil)) )
(assert (is-Cons l0) )
(check-sat)
