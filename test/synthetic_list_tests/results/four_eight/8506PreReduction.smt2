
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
(assert (is-Cons l0) )
(assert (not (= l0 l0)) )
(assert (and (= l3 l2) (is-Nil Nil) (is-Cons Nil)) )
(assert (not (= l1 l0)) )
(assert (is-Nil l1) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (is-Nil l1) )
(check-sat)
