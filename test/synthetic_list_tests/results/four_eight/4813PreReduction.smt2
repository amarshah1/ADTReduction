
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
(assert (not (is-Nil Nil)) )
(assert (not (is-Cons Nil)) )
(assert (or (= l1 Nil) (= l3 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (and (is-Nil Nil) (= l1 Nil) (is-Nil l0)) )
(assert (not (= l1 Nil)) )
(assert (is-Nil l3) )
(assert (and (= l0 l3) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(check-sat)
