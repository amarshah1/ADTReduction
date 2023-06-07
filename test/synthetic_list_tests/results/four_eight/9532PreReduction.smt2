
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
(assert (is-Nil l1) )
(assert (= l2 Nil) )
(assert (and (= l2 l0) (= l2 Nil) (= l1 Nil)) )
(assert (is-Cons l0) )
(assert (or (is-Nil Nil) (= l1 l3) (= l0 Nil) (= l3 Nil)) )
(assert (or (= l2 l3) (is-Cons l2)) )
(assert (is-Nil l3) )
(check-sat)
