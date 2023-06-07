
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
(assert (or (= l3 l3) (is-Nil l1) (is-Cons Nil) (= l2 l1)) )
(assert (and (is-Nil l1) (is-Nil Nil) (= l3 l0)) )
(assert (or (is-Nil Nil) (= l0 Nil) (is-Cons Nil)) )
(assert (is-Nil Nil) )
(assert (= l0 Nil) )
(assert (and (= l0 Nil) (is-Cons Nil) (= l0 Nil)) )
(assert (and (= l3 l2) (= l3 Nil)) )
(check-sat)
