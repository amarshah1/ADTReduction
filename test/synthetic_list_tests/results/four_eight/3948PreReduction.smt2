
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
(assert (not (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 l1) )
(assert (or (= l0 Nil) (= l0 Nil) (= l2 Nil) (= l2 l0)) )
(assert (not (is-Cons Nil)) )
(assert (or (is-Cons Nil) (is-Nil Nil) (= l1 Nil)) )
(check-sat)
