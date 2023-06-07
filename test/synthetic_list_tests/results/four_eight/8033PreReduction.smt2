
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
(assert (not (= l3 l3)) )
(assert (is-Cons Nil) )
(assert (not (= l0 l1)) )
(assert (not (= l1 Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (or (= l1 l1) (= l0 Nil)) )
(assert (not (is-Nil Nil)) )
(check-sat)
