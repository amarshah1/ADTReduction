
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
(assert (or (= l3 Nil) (= l2 Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 l1) )
(assert (and (= l1 l2) (= l0 Nil) (is-Nil Nil) (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (= l1 l0) (= l3 l3) (= l2 Nil)) )
(assert (and (= l1 l0) (is-Cons Nil)) )
(check-sat)
