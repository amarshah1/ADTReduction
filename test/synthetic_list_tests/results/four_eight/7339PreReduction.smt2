
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
(assert (and (= l0 Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l1 Nil) (= l0 Nil)) )
(assert (and (= l1 l3) (= l2 l0) (= l0 l2) (= l0 Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l2 l1) (= l1 Nil) (is-Cons Nil)) )
(check-sat)
