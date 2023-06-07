
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
(assert (is-Nil l1) )
(assert (or (= l0 Nil) (is-Cons Nil)) )
(assert (and (is-Cons l0) (= l1 Nil)) )
(assert (and (= l2 Nil) (= l3 Nil) (= l3 l1) (= l1 Nil)) )
(assert (not (= l1 Nil)) )
(assert (or (= l0 l0) (= l0 l1) (= l0 l0)) )
(assert (is-Nil Nil) )
(check-sat)
