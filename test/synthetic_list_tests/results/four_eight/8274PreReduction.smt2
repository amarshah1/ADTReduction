
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
(assert (or (= l1 Nil) (= l3 Nil) (= l3 l3) (= l1 l2)) )
(assert (= l1 Nil) )
(assert (and (= l3 Nil) (is-Nil Nil) (is-Nil Nil) (= l3 Nil)) )
(assert (and (is-Cons Nil) (is-Nil Nil)) )
(assert (and (= l0 Nil) (is-Cons l0) (= l3 Nil)) )
(assert (or (= l2 l3) (= l1 l1) (= l1 Nil)) )
(assert (and (= l2 l1) (is-Nil l2) (= l0 Nil) (= l1 Nil)) )
(assert (= l0 Nil) )
(check-sat)
