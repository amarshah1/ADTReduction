
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
(assert (not (= l2 Nil)) )
(assert (is-Cons l3) )
(assert (and (= l1 l2) (is-Nil l1) (= l1 Nil)) )
(assert (and (= l1 Nil) (= l0 l0)) )
(assert (is-Nil Nil) )
(assert (is-Cons l1) )
(assert (= l3 Nil) )
(assert (or (is-Cons l0) (= l3 Nil)) )
(check-sat)
