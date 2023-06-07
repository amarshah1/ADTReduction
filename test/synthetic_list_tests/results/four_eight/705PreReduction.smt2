
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
(assert (or (is-Cons Nil) (= l0 l0) (is-Nil Nil)) )
(assert (or (= l1 l2) (= l2 l0) (= l1 Nil) (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (and (is-Cons l3) (= l2 Nil) (= l0 Nil) (is-Nil l2)) )
(assert (not (is-Cons Nil)) )
(check-sat)
