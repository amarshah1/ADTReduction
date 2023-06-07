
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
(assert (is-Cons Nil) )
(assert (and (= l3 l0) (= l1 l2) (is-Nil l1) (is-Cons Nil)) )
(assert (or (= l0 Nil) (is-Cons l1)) )
(assert (is-Nil Nil) )
(assert (not (= l3 Nil)) )
(assert (is-Cons l0) )
(assert (and (is-Nil Nil) (= l2 Nil) (= l3 Nil)) )
(assert (and (is-Nil Nil) (= l3 Nil) (= l3 l1) (= l0 Nil)) )
(check-sat)
