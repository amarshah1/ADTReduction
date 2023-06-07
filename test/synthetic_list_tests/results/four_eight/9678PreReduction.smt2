
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
(assert (is-Cons Nil) )
(assert (and (= l3 l1) (is-Nil Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (and (= l1 l2) (= l2 Nil) (= l3 Nil) (= l1 Nil)) )
(assert (and (is-Cons Nil) (is-Cons Nil) (= l1 Nil)) )
(assert (= l0 l2) )
(assert (or (= l2 l1) (= l1 Nil) (= l2 Nil)) )
(assert (or (= l0 l0) (= l2 l0)) )
(check-sat)
