
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
(assert (not (is-Nil l3)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (is-Nil Nil) (= l0 Nil) (= l1 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (= l0 l2) )
(assert (and (is-Cons l0) (is-Cons Nil)) )
(assert (= l3 l3) )
(check-sat)
