
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
(assert (or (is-Nil l0) (= l1 l2) (= l1 Nil) (is-Nil Nil)) )
(assert (and (= l0 l1) (is-Cons l2) (= l1 l2)) )
(assert (and (= l0 Nil) (= l2 Nil) (is-Nil Nil) (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 Nil) )
(assert (not (= l3 l2)) )
(assert (is-Cons Nil) )
(assert (or (is-Nil Nil) (= l0 l0)) )
(check-sat)