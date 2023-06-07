
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
(assert (is-Cons l3) )
(assert (not (is-Nil Nil)) )
(assert (not (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l1 Nil) (= l3 l3)) )
(assert (is-Nil l1) )
(assert (or (= l3 l1) (= l2 Nil)) )
(assert (or (= l1 Nil) (is-Cons l1) (= l2 l1)) )
(check-sat)
