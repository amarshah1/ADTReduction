
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
(assert (or (is-Cons l2) (is-Nil Nil) (is-Nil l0)) )
(assert (not (= l2 l0)) )
(assert (= l0 Nil) )
(assert (and (= l2 l1) (is-Nil Nil) (= l3 l1)) )
(assert (or (= l3 l3) (= l2 l1) (is-Cons Nil) (= l2 Nil)) )
(assert (and (= l3 Nil) (is-Nil Nil) (= l1 Nil) (= l2 Nil)) )
(assert (= l1 l0) )
(assert (or (= l3 l2) (= l0 Nil) (= l1 Nil)) )
(check-sat)
