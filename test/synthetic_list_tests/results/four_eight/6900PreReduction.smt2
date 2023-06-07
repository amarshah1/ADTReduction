
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
(assert (or (is-Cons l1) (= l1 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (not (= l0 Nil)) )
(assert (not (= l2 Nil)) )
(assert (and (= l3 Nil) (= l2 Nil) (= l2 Nil) (is-Nil Nil)) )
(assert (and (= l3 Nil) (= l2 l1) (= l3 l2)) )
(assert (not (= l2 l0)) )
(assert (and (= l3 Nil) (= l3 l2) (is-Nil Nil) (= l2 Nil)) )
(assert (or (= l1 Nil) (= l0 Nil) (= l0 l3) (= l1 Nil)) )
(check-sat)
