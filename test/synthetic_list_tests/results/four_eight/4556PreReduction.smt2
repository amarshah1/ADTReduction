
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
(assert (not (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l1 l1) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (or (= l2 l0) (= l2 Nil) (= l2 l2) (= l3 Nil)) )
(assert (and (is-Nil Nil) (= l3 l0) (= l0 l0) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (= l2 l3) (= l1 l1) (= l3 l2)) )
(check-sat)
