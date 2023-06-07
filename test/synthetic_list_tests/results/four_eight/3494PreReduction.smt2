
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
(assert (not (= l0 Nil)) )
(assert (is-Nil l0) )
(assert (is-Nil l0) )
(assert (= l2 Nil) )
(assert (and (= l2 l0) (is-Nil l2) (is-Cons Nil)) )
(assert (and (= l1 Nil) (= l1 l2) (is-Cons Nil)) )
(assert (and (= l1 l3) (= l0 Nil) (= l1 Nil) (= l0 Nil)) )
(check-sat)
