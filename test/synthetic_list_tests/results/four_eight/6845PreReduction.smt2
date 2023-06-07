
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
(assert (and (is-Nil l2) (= l3 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Nil l1) )
(assert (and (= l2 Nil) (= l2 Nil) (= l0 l2) (is-Cons Nil)) )
(assert (or (is-Nil Nil) (is-Nil l2) (is-Nil Nil)) )
(assert (not (= l3 Nil)) )
(assert (is-Cons Nil) )
(check-sat)