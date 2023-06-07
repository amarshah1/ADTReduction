
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
(assert (= l1 Nil) )
(assert (not (= l1 Nil)) )
(assert (is-Nil Nil) )
(assert (not (is-Cons Nil)) )
(assert (and (is-Nil l0) (= l1 l0) (is-Cons Nil) (= l1 Nil)) )
(assert (is-Nil l1) )
(assert (= l3 Nil) )
(assert (not (= l2 Nil)) )
(check-sat)