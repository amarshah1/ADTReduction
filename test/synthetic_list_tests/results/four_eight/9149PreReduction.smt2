
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
(assert (not (is-Nil l0)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil l0) (is-Nil Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (= l2 l1) (= l1 Nil) (= l1 Nil)) )
(assert (and (= l2 Nil) (= l3 Nil) (= l3 Nil) (= l0 Nil)) )
(check-sat)
