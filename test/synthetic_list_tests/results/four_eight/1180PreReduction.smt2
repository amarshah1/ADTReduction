
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
(assert (= l1 l1) )
(assert (or (is-Cons Nil) (= l0 Nil)) )
(assert (not (= l0 Nil)) )
(assert (and (= l1 l1) (is-Cons Nil) (is-Cons l0) (is-Nil l1)) )
(assert (and (= l3 l1) (= l1 Nil) (is-Nil Nil)) )
(assert (is-Cons Nil) )
(assert (is-Nil l1) )
(check-sat)
