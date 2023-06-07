
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
(assert (or (= l1 Nil) (= l3 Nil)) )
(assert (and (= l0 Nil) (is-Nil Nil)) )
(assert (or (= l1 Nil) (is-Nil l3) (is-Nil Nil)) )
(assert (is-Nil l2) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (= l3 l0)) )
(assert (not (is-Cons Nil)) )
(check-sat)
