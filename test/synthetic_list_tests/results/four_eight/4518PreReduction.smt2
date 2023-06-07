
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
(assert (and (= l1 Nil) (= l0 Nil)) )
(assert (is-Nil l1) )
(assert (not (is-Nil Nil)) )
(assert (and (= l1 l1) (is-Nil Nil)) )
(assert (or (= l0 l1) (= l1 Nil)) )
(assert (and (= l0 Nil) (is-Cons Nil)) )
(assert (not (is-Nil Nil)) )
(assert (or (is-Cons Nil) (= l1 Nil) (is-Cons Nil)) )
(check-sat)
