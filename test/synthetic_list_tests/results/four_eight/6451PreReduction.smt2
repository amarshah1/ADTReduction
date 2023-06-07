
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
(assert (and (= l0 l1) (= l1 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (or (= l1 l0) (is-Nil l3)) )
(assert (is-Cons l0) )
(assert (= l0 Nil) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l2 l3)) )
(assert (or (is-Nil Nil) (is-Nil l3) (is-Nil l1) (is-Cons l3)) )
(assert (or (= l2 Nil) (= l2 l3) (= l1 l2)) )
(assert (not (= l3 l2)) )
(check-sat)
