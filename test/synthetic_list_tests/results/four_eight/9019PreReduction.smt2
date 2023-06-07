
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
(assert (= l0 l2) )
(assert (is-Nil l3) )
(assert (is-Nil l1) )
(assert (or (= l1 l2) (is-Nil l1) (= l2 l3) (= l2 Nil)) )
(assert (or (is-Cons l3) (= l2 Nil) (is-Nil l3)) )
(assert (not (= l0 Nil)) )
(assert (not (= l3 l2)) )
(check-sat)
