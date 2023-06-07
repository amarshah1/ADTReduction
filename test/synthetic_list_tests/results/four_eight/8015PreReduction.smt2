
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
(assert (or (= l3 l0) (is-Nil l0) (= l3 Nil)) )
(assert (or (= l1 l1) (= l0 l1) (= l1 Nil) (= l0 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (not (is-Cons l2)) )
(assert (is-Cons Nil) )
(assert (and (is-Cons Nil) (= l0 Nil) (= l2 l0)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (is-Cons Nil) (= l3 Nil)) )
(check-sat)