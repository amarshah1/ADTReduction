
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
(assert (not (is-Cons Nil)) )
(assert (or (= l3 l1) (is-Nil Nil) (= l3 Nil) (= l0 Nil)) )
(assert (or (= l1 Nil) (is-Cons Nil) (= l0 l2) (= l0 Nil)) )
(assert (= l0 l3) )
(assert (is-Nil Nil) )
(assert (is-Nil Nil) )
(assert (or (= l2 l2) (= l1 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (and (is-Nil Nil) (is-Nil l1)) )
(check-sat)
