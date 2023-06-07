
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
(assert (is-Nil Nil) )
(assert (not (is-Nil Nil)) )
(assert (and (= l0 l3) (= l3 Nil)) )
(assert (and (is-Cons Nil) (= l0 Nil)) )
(assert (and (= l0 l0) (= l0 Nil)) )
(assert (and (is-Cons Nil) (= l1 l2) (= l0 Nil)) )
(assert (is-Nil l2) )
(assert (and (= l3 l2) (is-Cons Nil) (= l2 l1) (= l1 l0)) )
(check-sat)
