
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
(assert (= l3 l0) )
(assert (not (is-Cons Nil)) )
(assert (and (= l2 l2) (= l0 l1) (= l3 Nil)) )
(assert (not (= l1 l1)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (or (is-Nil l2) (= l0 l0)) )
(check-sat)
