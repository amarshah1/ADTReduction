
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
(assert (and (= l2 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (or (= l3 Nil) (is-Cons l3) (= l0 l0) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (or (= l1 Nil) (= l0 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (not (= l0 l2)) )
(assert (= l2 l3) )
(assert (= l2 Nil) )
(assert (and (is-Nil Nil) (is-Cons l1) (is-Nil l2) (= l1 Nil)) )
(check-sat)
