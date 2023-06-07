
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
(assert (and (= l1 l3) (= l1 Nil) (= l2 l3) (is-Nil Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Nil Nil) (= l2 l3) (= l2 l0) (= l2 l2)) )
(assert (or (= l3 Nil) (= l2 l1) (= l0 Nil) (= l2 Nil)) )
(assert (and (= l2 l3) (= l3 l1) (is-Nil Nil) (is-Cons Nil)) )
(assert (and (= l2 Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(check-sat)
