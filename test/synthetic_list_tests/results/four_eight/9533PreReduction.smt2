
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
(assert (or (= l1 l0) (= l0 l0) (= l3 Nil)) )
(assert (not (= l1 l0)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (not (= l2 l0)) )
(assert (is-Cons Nil) )
(assert (is-Nil l1) )
(assert (or (is-Nil Nil) (is-Cons Nil)) )
(check-sat)
