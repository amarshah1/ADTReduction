
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
(assert (not (= l1 l1)) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (= l2 Nil)) )
(assert (not (is-Nil l0)) )
(assert (or (is-Nil Nil) (is-Nil Nil)) )
(assert (or (= l2 l0) (is-Cons l1) (= l3 Nil) (is-Nil l2)) )
(assert (is-Cons Nil) )
(check-sat)
