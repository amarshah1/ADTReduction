
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
(assert (and (= l0 l3) (is-Cons Nil) (= l0 l1)) )
(assert (not (= l2 Nil)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l3 l0) (= l2 Nil) (= l3 Nil)) )
(assert (and (= l0 l1) (is-Nil l2) (= l0 Nil)) )
(assert (not (is-Nil l0)) )
(check-sat)
