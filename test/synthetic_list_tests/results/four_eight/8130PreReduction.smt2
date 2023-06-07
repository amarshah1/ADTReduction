
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
(assert (not (= l3 Nil)) )
(assert (not (is-Nil l2)) )
(assert (or (is-Nil l0) (= l1 l0) (= l3 Nil) (= l3 Nil)) )
(assert (is-Cons l1) )
(assert (not (= l2 Nil)) )
(assert (not (is-Nil l0)) )
(assert (not (is-Cons l3)) )
(check-sat)
