
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
(assert (and (= l2 Nil) (= l2 l1) (= l1 Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons l0) )
(assert (and (= l0 Nil) (is-Cons Nil) (= l0 l1) (= l1 Nil)) )
(assert (or (= l2 Nil) (= l1 l2)) )
(assert (and (= l0 l2) (= l3 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (= l0 l3) )
(check-sat)
