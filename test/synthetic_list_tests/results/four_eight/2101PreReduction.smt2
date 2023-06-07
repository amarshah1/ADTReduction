
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
(assert (not (= l3 Nil)) )
(assert (= l3 Nil) )
(assert (or (is-Nil Nil) (= l0 Nil) (is-Cons Nil) (is-Cons l1)) )
(assert (and (= l0 Nil) (= l3 l0) (= l2 Nil) (= l3 l1)) )
(assert (and (= l0 Nil) (= l2 l2) (is-Cons Nil) (is-Nil Nil)) )
(assert (and (is-Nil l2) (= l3 l2) (= l2 Nil)) )
(assert (is-Nil Nil) )
(assert (is-Nil l0) )
(check-sat)
