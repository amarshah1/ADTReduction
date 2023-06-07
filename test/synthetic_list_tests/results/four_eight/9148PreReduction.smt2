
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
(assert (or (= l0 Nil) (= l2 l1) (is-Nil l3)) )
(assert (and (= l1 Nil) (is-Cons Nil) (is-Nil l1) (= l2 Nil)) )
(assert (or (is-Nil Nil) (= l2 l1) (= l0 l2)) )
(assert (= l3 Nil) )
(assert (not (= l3 Nil)) )
(assert (and (= l1 l0) (= l3 Nil) (= l0 Nil)) )
(assert (is-Nil l2) )
(assert (and (= l2 Nil) (= l3 Nil) (= l2 Nil) (is-Cons l1)) )
(check-sat)
