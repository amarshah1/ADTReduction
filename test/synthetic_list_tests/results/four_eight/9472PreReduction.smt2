
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
(assert (or (is-Cons Nil) (is-Nil Nil) (is-Cons l3) (= l0 Nil)) )
(assert (and (= l2 Nil) (is-Nil Nil) (= l2 l2) (is-Nil l3)) )
(assert (is-Cons l0) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (is-Nil Nil) )
(assert (not (= l1 l1)) )
(assert (not (= l2 Nil)) )
(check-sat)
