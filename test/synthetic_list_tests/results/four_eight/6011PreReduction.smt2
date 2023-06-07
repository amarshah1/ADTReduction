
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
(assert (or (= l0 l1) (= l0 l3) (is-Cons Nil) (= l2 Nil)) )
(assert (and (= l3 Nil) (= l3 l0) (= l1 l2)) )
(assert (is-Nil l0) )
(assert (and (= l2 Nil) (= l0 Nil) (is-Nil Nil) (is-Nil Nil)) )
(assert (not (= l0 Nil)) )
(assert (or (= l1 Nil) (is-Nil l2)) )
(assert (not (is-Cons Nil)) )
(assert (and (= l0 Nil) (= l0 l1) (= l1 Nil)) )
(check-sat)
