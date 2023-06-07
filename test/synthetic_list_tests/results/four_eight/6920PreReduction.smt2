
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
(assert (and (is-Cons l0) (= l0 l0) (is-Cons l0)) )
(assert (and (= l1 l3) (is-Cons Nil) (is-Nil l3)) )
(assert (is-Cons Nil) )
(assert (and (= l2 Nil) (= l3 Nil)) )
(assert (not (= l3 l1)) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(check-sat)
