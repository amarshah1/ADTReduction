
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
(assert (is-Nil Nil) )
(assert (is-Cons l0) )
(assert (= l3 Nil) )
(assert (is-Cons Nil) )
(assert (not (is-Nil l0)) )
(assert (and (is-Cons Nil) (is-Cons l1)) )
(assert (or (= l0 l3) (= l3 Nil)) )
(check-sat)
