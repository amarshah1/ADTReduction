
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
(assert (= l2 Nil) )
(assert (is-Nil l3) )
(assert (or (is-Nil Nil) (= l3 Nil)) )
(assert (is-Nil Nil) )
(assert (not (is-Nil Nil)) )
(assert (and (= l1 l1) (= l2 Nil)) )
(assert (and (= l3 l2) (is-Cons Nil) (= l0 Nil) (is-Cons Nil)) )
(check-sat)
