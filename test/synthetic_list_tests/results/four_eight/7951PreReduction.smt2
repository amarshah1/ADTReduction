
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
(assert (is-Cons l1) )
(assert (and (is-Cons Nil) (is-Nil Nil) (= l3 l0) (= l1 l1)) )
(assert (or (= l3 Nil) (= l3 l1)) )
(assert (and (is-Nil Nil) (is-Nil l0)) )
(assert (and (= l1 Nil) (= l1 Nil) (is-Cons Nil) (is-Nil Nil)) )
(assert (or (is-Nil Nil) (= l1 Nil)) )
(assert (is-Nil l0) )
(assert (and (is-Nil Nil) (= l3 Nil) (is-Nil Nil) (= l1 l2)) )
(check-sat)
