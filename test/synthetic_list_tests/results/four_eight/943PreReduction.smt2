
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
(assert (and (is-Cons Nil) (= l2 Nil)) )
(assert (not (= l2 l1)) )
(assert (and (is-Nil l0) (is-Nil l2) (is-Nil Nil)) )
(assert (or (= l0 l0) (is-Nil Nil) (= l0 l3) (is-Cons l0)) )
(assert (is-Nil Nil) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (not (= l1 Nil)) )
(check-sat)
