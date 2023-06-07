
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
(assert (is-Cons l2) )
(assert (or (= l0 l3) (= l1 Nil)) )
(assert (and (= l2 Nil) (is-Nil l2) (= l2 l2) (= l2 Nil)) )
(assert (= l3 Nil) )
(assert (not (= l3 l3)) )
(assert (is-Nil Nil) )
(assert (or (is-Cons l3) (is-Nil Nil) (= l2 l0) (is-Cons Nil)) )
(check-sat)
