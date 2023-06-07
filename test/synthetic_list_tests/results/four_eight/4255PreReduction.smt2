
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
(assert (or (= l1 Nil) (= l0 Nil) (is-Nil Nil) (= l3 l0)) )
(assert (not (is-Nil Nil)) )
(assert (and (= l1 Nil) (= l3 l1) (= l2 Nil)) )
(assert (not (= l1 Nil)) )
(assert (and (= l1 Nil) (is-Nil l0) (= l2 Nil)) )
(assert (is-Nil l1) )
(assert (= l2 Nil) )
(assert (not (is-Cons Nil)) )
(check-sat)
