
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
(assert (not (= l1 Nil)) )
(assert (and (is-Nil Nil) (= l1 l2) (is-Nil l0)) )
(assert (or (= l2 Nil) (= l1 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (and (= l2 Nil) (is-Cons Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l3) )
(check-sat)
