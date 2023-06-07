
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
(assert (not (= l1 l0)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (or (is-Nil Nil) (= l3 Nil) (= l0 Nil) (= l0 Nil)) )
(assert (and (is-Nil Nil) (= l2 Nil) (= l1 l1) (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l0 Nil) (= l2 l1) (= l0 l1)) )
(assert (or (= l3 Nil) (is-Cons Nil) (= l1 Nil) (= l0 l3)) )
(check-sat)
