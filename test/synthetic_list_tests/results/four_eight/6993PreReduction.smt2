
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
(assert (and (= l2 Nil) (= l3 Nil)) )
(assert (is-Nil l1) )
(assert (or (is-Nil l2) (= l0 l2)) )
(assert (= l2 Nil) )
(assert (or (= l0 Nil) (= l2 Nil) (is-Nil l3)) )
(assert (is-Nil l0) )
(assert (and (is-Cons l3) (= l2 l0) (is-Cons l1)) )
(assert (is-Cons l3) )
(check-sat)
