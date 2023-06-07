
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
(assert (or (= l1 Nil) (= l2 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (is-Nil Nil) )
(assert (and (is-Cons Nil) (= l2 Nil) (= l3 Nil)) )
(assert (or (= l0 l2) (= l0 l3) (= l2 l0) (= l1 Nil)) )
(assert (not (= l3 l0)) )
(assert (and (= l0 Nil) (is-Nil Nil)) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(check-sat)
