
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
(assert (is-Nil l1) )
(assert (= l3 l0) )
(assert (= l2 Nil) )
(assert (not (is-Cons Nil)) )
(assert (not (= l1 Nil)) )
(assert (and (is-Cons l0) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (and (is-Nil Nil) (is-Nil l3) (= l0 l0) (is-Nil l1)) )
(check-sat)
