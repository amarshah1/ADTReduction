
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
(assert (is-Nil l3) )
(assert (and (= l1 Nil) (is-Nil Nil)) )
(assert (or (is-Cons Nil) (= l3 Nil) (= l2 Nil) (= l3 Nil)) )
(assert (not (= l1 Nil)) )
(assert (or (= l2 Nil) (is-Cons l3)) )
(assert (= l2 l0) )
(assert (and (is-Cons l1) (= l3 l3) (= l1 Nil) (is-Nil l2)) )
(assert (and (= l0 l0) (is-Nil Nil) (= l3 l2)) )
(check-sat)
