
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
(assert (and (= l0 Nil) (= l0 Nil)) )
(assert (and (is-Nil l3) (= l0 l0) (= l1 Nil) (= l0 l0)) )
(assert (= l1 l1) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l2 Nil) (is-Nil Nil) (= l0 l0)) )
(assert (and (is-Cons Nil) (= l1 l3) (is-Nil l0) (= l0 Nil)) )
(assert (not (= l0 Nil)) )
(check-sat)
